#### Pre-installing ####
## load packages
library("readxl")

## set working directory
setwd('C://Users//s138673//OneDrive - TU Eindhoven//Afstuderen//Experiments//Total')


#### load SegThor ####
## load complete SegThor data
segthor_data = read_excel("segthor_Rinput_data.xlsx")
segthor_data$score = as.numeric(as.character(segthor_data$score))

## clean SegThor data
# select only Dice score
segthor_dice <- subset(segthor_data, Dice=="oui")
segthor_dice <- subset(segthor_dice, select = -c(Hausdorff, Dice))

## create subsample Segthor data
# set 'random images' subset
sub1_ST <- c('i', 'ii', 'iii', 'iv', 'v')
sub_one_ST <- sub_samping(segthor_dice, sub1_ST)
sub2_ST <- c('vi', 'vii', 'viii', 'ix', 'x')
sub_two_ST <- sub_samping(segthor_dice, sub2_ST)
sub3_ST <- c('xi', 'xii', 'xiii', 'xiv', 'xv')
sub_three_ST <- sub_samping(segthor_dice, sub3_ST)
sub4_ST <- c('xvi', 'xvii', 'xviii', 'xix', 'xx')
sub_four_ST <- sub_samping(segthor_dice, sub4_ST)
# set 'best and worst preforming' images subset
sub_b_ST <- c('i', 'ii', 'iv', 'v', 'vi', 'vii', 'viii', 'ix', 'xi', 'xii', 'xiii', 'xiv', 'xv', 'xvii', 'xix')
sub_best_ST <- sub_samping(segthor_dice, sub_b_ST)
sub_w_ST <- c('i', 'iii', 'iv', 'v', 'vi', 'vii', 'ix', 'x', 'xiv', 'xv', 'xvi', 'xvii', 'xviii', 'xix', 'xx')
sub_worst_ST <- sub_samping(segthor_dice, sub_w_ST)
# combine subsets to (leave 5 out subset)
l5o_one_ST <- rbind(sub_two_ST, sub_three_ST, sub_four_ST)
l5o_two_ST <- rbind(sub_one_ST, sub_three_ST, sub_four_ST)
l5o_three_ST <- rbind(sub_one_ST, sub_two_ST, sub_four_ST)
l5o_four_ST <- rbind(sub_one_ST, sub_two_ST, sub_three_ST)


## seperate data for every tissuetype
#no subsampling
E_dice_ST <- subset(segthor_dice, organ=="E")
T_dice_ST <- subset(segthor_dice, organ=="T")
H_dice_ST <- subset(segthor_dice, organ=="H")
A_dice_ST <- subset(segthor_dice, organ=="A")
#subsample: minus 5 random images (1)
E_sub_one_ST <- subset(l5o_one_ST, organ=="E")
T_sub_one_ST <- subset(l5o_one_ST, organ=="T")
H_sub_one_ST <- subset(l5o_one_ST, organ=="H")
A_sub_one_ST <- subset(l5o_one_ST, organ=="A")
#subsample: minus 5 random images (2)
E_sub_two_ST <- subset(l5o_two_ST, organ=="E")
T_sub_two_ST <- subset(l5o_two_ST, organ=="T")
H_sub_two_ST <- subset(l5o_two_ST, organ=="H")
A_sub_two_ST <- subset(l5o_two_ST, organ=="A")
#subsample: minus 5 random images (3)
E_sub_three_ST <- subset(l5o_three_ST, organ=="E")
T_sub_three_ST <- subset(l5o_three_ST, organ=="T")
H_sub_three_ST <- subset(l5o_three_ST, organ=="H")
A_sub_three_ST <- subset(l5o_three_ST, organ=="A")
#subsample: minus 5 random images (4)
E_sub_four_ST <- subset(l5o_four_ST, organ=="E")
T_sub_four_ST <- subset(l5o_four_ST, organ=="T")
H_sub_four_ST <- subset(l5o_four_ST, organ=="H")
A_sub_four_ST <- subset(l5o_four_ST, organ=="A")
#subsample: minus 5 best images
E_sub_best_ST <- subset(sub_best_ST, organ=="E")
T_sub_best_ST <- subset(sub_best_ST, organ=="T")
H_sub_best_ST <- subset(sub_best_ST, organ=="H")
A_sub_best_ST <- subset(sub_best_ST, organ=="A")
#subsample: minus 5 worst images
E_sub_worst_ST <- subset(sub_worst_ST, organ=="E")
T_sub_worst_ST <- subset(sub_worst_ST, organ=="T")
H_sub_worst_ST <- subset(sub_worst_ST, organ=="H")
A_sub_worst_ST <- subset(sub_worst_ST, organ=="A")



#### load CHAOS ####
# CHAOS task 1
T1_dice_C = read_excel("chaos_Rinput_data.xlsx", sheet = 1)
T1_dice_C$score = as.numeric(as.character(T1_dice_C$score))
# CHAOS task 2
T2_dice_C = read_excel("chaos_Rinput_data.xlsx", sheet = 2)
T2_dice_C$score = as.numeric(as.character(T2_dice_C$score))
# CHAOS task 3
T3_dice_C = read_excel("chaos_Rinput_data.xlsx", sheet = 3)
T3_dice_C$score = as.numeric(as.character(T3_dice_C$score))
# CHAOS task 4
T4_dice_C = read_excel("chaos_Rinput_data.xlsx", sheet = 4)
T4_dice_C$score = as.numeric(as.character(T4_dice_C$score))
# CHAOS task 5
T5_dice_C = read_excel("chaos_Rinput_data.xlsx", sheet = 5)
T5_dice_C$score = as.numeric(as.character(T5_dice_C$score))


#### load MRBrainS 2018 data ####
T1_MRB = read_excel("MRBrainS_Rinput_data.xlsx", sheet = 1)
T2_MRB = read_excel("MRBrainS_Rinput_data.xlsx", sheet = 2)
T3_MRB = read_excel("MRBrainS_Rinput_data.xlsx", sheet = 3)
T4_MRB = read_excel("MRBrainS_Rinput_data.xlsx", sheet = 4)
T5_MRB = read_excel("MRBrainS_Rinput_data.xlsx", sheet = 5)
T6_MRB = read_excel("MRBrainS_Rinput_data.xlsx", sheet = 6)
T7_MRB = read_excel("MRBrainS_Rinput_data.xlsx", sheet = 7)
T8_MRB = read_excel("MRBrainS_Rinput_data.xlsx", sheet = 8)

## clean MRBrainS 2018 data
# Dice MRBrainS task 1
T1_dice_MRB <- subset(T1_MRB, select = -c(VS, HD))
T1_dice_MRB$DC = as.numeric(as.character(T1_dice_MRB$DC))
# Dice MRBrainS task 2
T2_dice_MRB <- subset(T2_MRB, select = -c(VS, HD))
T2_dice_MRB$DC = as.numeric(as.character(T2_dice_MRB$DC))
# Dice MRBrainS task 3
T3_dice_MRB <- subset(T3_MRB, select = -c(VS, HD))
T3_dice_MRB$DC = as.numeric(as.character(T3_dice_MRB$DC))
# Dice MRBrainS task 4 minus nan values
T4_MRB <- subset(T4_MRB, image!='viii')
T4_MRB <- subset(T4_MRB, image!='xiv' | ID!='R')
T4_dice_MRB <- subset(T4_MRB, select = -c(VS, HD))
T4_dice_MRB$DC = as.numeric(as.character(T4_dice_MRB$DC))
# Dice MRBrainS task 5
T5_dice_MRB <- subset(T5_MRB, select = -c(VS, HD))
T5_dice_MRB$DC = as.numeric(as.character(T5_dice_MRB$DC))
# Dice MRBrainS task 6
T6_dice_MRB <- subset(T6_MRB, select = -c(VS, HD))
T6_dice_MRB$DC = as.numeric(as.character(T6_dice_MRB$DC))
# Dice MRBrainS task 7
T7_dice_MRB <- subset(T7_MRB, select = -c(VS, HD))
T7_dice_MRB$DC = as.numeric(as.character(T7_dice_MRB$DC))
# Dice MRBrainS task 8
T8_dice_MRB <- subset(T8_MRB, select = -c(VS, HD))
T8_dice_MRB$DC = as.numeric(as.character(T8_dice_MRB$DC))


#### load Decathlon data ####
Decathlon_data <- read_excel("decathlon_adj.xlsx")

## removing useless columns
Decathlon_data = subset(Decathlon_data, select=c(case, subtask, metric, score, ID))
Decathlon_data = transform(Decathlon_data, value = as.numeric(score), ID = as.factor(ID))

## subsetting data
# BRATS_L1
BRATS_L1 = subset(Decathlon_data, subtask=="BRATS_L1")
BRATS_L1_dice_D = subset(BRATS_L1, metric=="DCS")
# BRATS_L2
BRATS_L2 = subset(Decathlon_data, subtask=="BRATS_L2")
BRATS_L2_dice_D = subset(BRATS_L2, metric=="DCS")
# BRATS_L3
BRATS_L3 = subset(Decathlon_data, subtask=="BRATS_L3")
BRATS_L3_dice_D = subset(BRATS_L3, metric=="DCS")
# Heart
Heart = subset(Decathlon_data, subtask=="la_L1")
Heart_dice_D = subset(Heart, metric=="DCS")
# Hippocampus L1
Hippo_L1 = subset(Decathlon_data, subtask=="hippocampus_L1")
Hippo_L1_dice_D = subset(Hippo_L1, metric=="DCS")
# Hippocampus L2
Hippo_L2 = subset(Decathlon_data, subtask=="hippocampus_L2")
Hippo_L2_dice_D = subset(Hippo_L2, metric=="DCS")
# Liver L1
Liver_L1 = subset(Decathlon_data, subtask=="liver_L1")
Liver_L1_dice_D = subset(Liver_L1, metric=="DCS")
# Liver L2
Liver_L2 = subset(Decathlon_data, subtask=="liver_L2")
Liver_L2_dice_D = subset(Liver_L2, metric=="DCS")
# Lung
Lung = subset(Decathlon_data, metric=="lung_L1")
Lung_dice_D = subset(Lung, metric=="DCS")
# Pancreas L1
Pancreas_L1 = subset(Decathlon_data, subtask=="pancreas_L1")
Pancreas_L1_dice_D = subset(Pancreas_L1, metric=="DCS")
# Pancreas L2
Pancreas_L2 = subset(Decathlon_data, subtask=="pancreas_L2")
Pancreas_L2_dice_D = subset(Pancreas_L2, metric=="DCS")
# Prostate L1
Prostate_L1 = subset(Decathlon_data, subtask=="prostate_L1")
Prostate_L1_dice_D = subset(Prostate_L1, metric=="DCS")
# Prostate L2
Prostate_L2 = subset(Decathlon_data, subtask=="prostate_L2")
Prostate_L2_dice_D = subset(Prostate_L2, metric=="DCS")
# Hepatic Vessel L1
Hepaticvessel_L1 = subset(Decathlon_data, subtask=="hepaticvessel_L1")
Hepaticvessel_L1_dice_D = subset(Hepaticvessel_L1, metric=="DCS")
# Hepaticvessel L2
Hepaticvessel_L2 = subset(Decathlon_data, subtask=="hepaticvessel_L2")
Hepaticvessel_L2_dice_D = subset(Hepaticvessel_L2, metric=="DCS")
# Spleen
Spleen = subset(Decathlon_data, subtask=="spleen_L1")
Spleen_dice_D = subset(Spleen, metric=="DCS")
# Colon
Colon = subset(Decathlon_data, subtask=="colon_L1")
Colon_dice_D = subset(Colon, metric=="DCS")