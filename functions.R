## load packages
# needed for plotting / colours / visuals
library(ggplot2)
library(RColorBrewer)
library(viridis)
library(dplyr)
# needed for fiting distributions
library(fitdistrplus)


#### FUNCTIONS #####

## General functions for standard deviation
lb <- function(x) mean(x) - sd(x) #lower bound of standard deviation
ub <- function(x) mean(x) + sd(x) #upper bound of standard deviation


## import flat violin function
source("https://gist.githubusercontent.com/benmarwick/2a1bb0133ff568cbe28d/raw/fb53bd97121f7f9ce947837ef1a4c65a73bffb3f/geom_flat_violin.R")


## Function raincloudplots
rainclouds <- function(dataset) {
  ## dataset should consist of:
  # score (giving the values of the Dice scores)
  # ID (specifieing which algorithm we look at)
  # only 1 experiment and only 1 metric (prior-filtering neseccary)
  
  ## calculating the summary statistics used in the raincloud plots (mean and standard deviation)
  suml <- ddply(dataset, ~ID, summarise, mean = mean(score), lower = lb(score), upper = ub(score))
  
  ## creating raincloud plot
  # All algorithms on the x-axis
  # Dice score on the y-axis
  # Raw data (coloured scatter), data distribution (coloured blobs), mean (black point), 
    #and standard deviations (black error bars) per algorithm results are included
  g <- ggplot(data = dataset, aes(y = score, x = ID, fill = ID)) + #defining the plot data 
    geom_flat_violin(position = position_nudge(x = .2, y = 0), alpha = .8, show.legend = FALSE) + #creating the violin part of the plot
    geom_point(aes(y = score, x = ID, color = ID), position = position_jitter(width = .15), size = .5, alpha = 0.8, show.legend = FALSE) + #creating the scatter part of the plot
    geom_point(data = suml, aes(x = ID, y = mean), position = position_nudge(x = 0.3), size = 1, color = "black", show.legend = FALSE) + #creating the points of the mean values
    geom_errorbar(data = suml, aes(ymin = lower, ymax = upper, y = mean), position = position_nudge(x = 0.3), size = 0.7, width = 0.2, color = "black") + #adding the standard deviations
    xlab("Algorithm") + ylab("Dice score") + guides(fill = FALSE) + guides(color = FALSE) + #defining layout
    coord_cartesian(ylim = c(0.0, 1.0))
  g  + theme_classic() #plotting the graph
}  


## Function to summarize statistics
summary_statistics <- function(data){
  #define algorithms of interest
  algorithms <- unique(data$ID)
  
  #create empty dataframe for skewness-kortosis plots and exploratory analysis
  cul_frey <- data.frame(matrix(0, nrow = 0, ncol = 9))
  #give columns names
  colnames(cul_frey)[1] <- 'min'
  colnames(cul_frey)[2] <- 'max'
  colnames(cul_frey)[3] <- 'median'
  colnames(cul_frey)[4] <- 'mean'
  colnames(cul_frey)[5] <- 'sd'
  colnames(cul_frey)[6] <- 'skewness'
  colnames(cul_frey)[7] <- 'kurtosis'
  colnames(cul_frey)[8] <- 'method'
  colnames(cul_frey)[9] <- 'squared_skewness'
  
  #determine values of each algorithm seperatly 
  for(j in algorithms){
    per_tt_per_alg <- subset(data, ID == j )
    normal_est <- descdist(per_tt_per_alg$score, boot = 20)
    #write values to correct column
    cul_frey[j,1] <- normal_est$min
    cul_frey[j,2] <- normal_est$max
    cul_frey[j,3] <- normal_est$median
    cul_frey[j,4] <- normal_est$mean
    cul_frey[j,5] <- normal_est$sd
    cul_frey[j,6] <- normal_est$skewness
    cul_frey[j,7] <- normal_est$kurtosis
    cul_frey[j,8] <- normal_est$method
    cul_frey[j,9] <- cul_frey[j,6]*cul_frey[j,6]
  }
  return(cul_frey)
}


## create Cullen-Frey graph
cullen_frey <- function(data) {
  ## load needed data
  cul_frey <- summary_statistics(data)
  
  ## graph kurtosis - square of skewness for all algorithms
  f <- ggplot(data = cul_frey, aes(y = kurtosis, x = squared_skewness)) +
    geom_point(aes(y = kurtosis, x = squared_skewness, color = mean), size = 3, alpha = 0.4) +
    geom_abline(intercept = -3, slope = -(6/4), linetype = "dashed") +
    geom_abline(intercept = -1, slope = -1, linetype = "dashed") +
    geom_abline(intercept = -3, slope = -(6/3), linetype = "dotted") +
    scale_y_reverse() +
    scale_color_viridis(option = "D") +
    geom_point(aes(x = 0, y = 3), shape = 8, size = 3) + 
    geom_point(aes(x = 0, y = 4.2), shape = 3, size = 3) +
    geom_point(aes(x = 0, y = 1.9), shape = 2, size = 3) +
    geom_point(aes(x = 4, y = 9), shape = 7, size = 3) + 
    xlab("Square of skewness") + ylab("Kurtosis") + ggtitle("Kurtosis-Skewness distribution")
  f  + theme_classic()
}


## create function to aproximate distribution per algorithm for specific emperical data
# save mean, sd, alpha and beta parameters of normal and beta distributions per metric per tissuetype for every algorithm
para_p_algorithm <- function(data){
  #define algorithms of interest
  algorithms <- unique(data$ID)
  
  #create empty dataframe for distribution parameters
  para <- data.frame(matrix(0, nrow = 0, ncol = 4))
  colnames(para)[1] <- 'mean'
  colnames(para)[2] <- 'sd'
  colnames(para)[3] <- 'alpha'
  colnames(para)[4] <- 'beta'

  #determine values of each algorithm seperatly 
  for(j in algorithms){
    per_tt_per_alg <- subset(data, ID == j )
    normal_est <- descdist(per_tt_per_alg$score, boot = 20)
    beta_est <- fitdist(per_tt_per_alg$score, 'beta')
    alpha_beta <- beta_est$estimate
    #write values to correct column    
    para[j,1] <- normal_est$mean
    para[j,2] <- normal_est$sd
    para[j,3] <- alpha_beta[1]
    para[j,4] <- alpha_beta[2]
  }
  return(para)
}

## create function for subsampling challenge data by selected images
sub_samping <- function(data, sub_images){
  sub_set <- data.frame()
  for(j in sub_images){
    sub <- subset(data, im == j)
    sub_set <- rbind(sub_set, sub)
  }
  return(sub_set)
}