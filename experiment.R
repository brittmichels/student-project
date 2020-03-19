#### Segthor experiments ####
## Total dataset
# calculate raincloud plots
rc_ST_tot <- rainclouds(segthor_dice)
rc_ST_A <- rainclouds(A_dice_ST)
rc_ST_E <- rainclouds(E_dice_ST)
rc_ST_H <- rainclouds(H_dice_ST)
rc_ST_T <- rainclouds(T_dice_ST)
# calculate summay statistics
ss_ST_tot <- summary_statistics(segthor_dice)
ss_ST_A <- summary_statistics(A_dice_ST)
ss_ST_E <- summary_statistics(E_dice_ST)
ss_ST_H <- summary_statistics(H_dice_ST)
ss_ST_T <- summary_statistics(T_dice_ST)
# calculate cullen-frey graphs
cf_ST_tot <- cullen_frey(segthor_dice)
cf_ST_A <- cullen_frey(A_dice_ST)
cf_ST_E <- cullen_frey(E_dice_ST)
cf_ST_H <- cullen_frey(H_dice_ST)
cf_ST_T <- cullen_frey(T_dice_ST)
# calculate parameters for normal and beta distribution
par_ST_tot <- para_p_algorithm(segthor_dice)
par_ST_A <- para_p_algorithm(A_dice_ST)
par_ST_E <- para_p_algorithm(E_dice_ST)
par_ST_H <- para_p_algorithm(H_dice_ST)
par_ST_T <- para_p_algorithm(T_dice_ST)

## Leave 5 out subset (1)
# calculate raincloud plots
rc_ST_tot_sub_one <- rainclouds(l5o_one_ST)
rc_ST_A_sub_one <- rainclouds(A_sub_one_ST)
rc_ST_E_sub_one <- rainclouds(E_sub_one_ST)
rc_ST_H_sub_one <- rainclouds(H_sub_one_ST)
rc_ST_T_sub_one <- rainclouds(T_sub_one_ST)
# calculate summay statistics
ss_ST_tot_sub_one <- summary_statistics(l5o_one_ST)
ss_ST_A_sub_one <- summary_statistics(A_sub_one_ST)
ss_ST_E_sub_one <- summary_statistics(E_sub_one_ST)
ss_ST_H_sub_one <- summary_statistics(H_sub_one_ST)
ss_ST_T_sub_one <- summary_statistics(T_sub_one_ST)
# calculate cullen-frey graphs
cf_ST_tot_sub_one <- cullen_frey(l5o_one_ST)
cf_ST_A_sub_one <- cullen_frey(A_sub_one_ST)
cf_ST_E_sub_one <- cullen_frey(E_sub_one_ST)
cf_ST_H_sub_one <- cullen_frey(H_sub_one_ST)
cf_ST_T_sub_one <- cullen_frey(T_sub_one_ST)
# calculate parameters for normal and beta distribution
par_ST_tot_sub_one <- para_p_algorithm(l5o_one_ST)
par_ST_A_sub_one <- para_p_algorithm(A_sub_one_ST)
par_ST_E_sub_one <- para_p_algorithm(E_sub_one_ST)
par_ST_H_sub_one <- para_p_algorithm(H_sub_one_ST)
par_ST_T_sub_one <- para_p_algorithm(T_sub_one_ST)

## leave 5 out subset (2)
# calculate raincloud plots
rc_ST_tot_sub_two <- rainclouds(l5o_two_ST)
rc_ST_A_sub_two <- rainclouds(A_sub_two_ST)
rc_ST_E_sub_two <- rainclouds(E_sub_two_ST)
rc_ST_H_sub_two <- rainclouds(H_sub_two_ST)
rc_ST_T_sub_two <- rainclouds(T_sub_two_ST)
# calculate summay statistics
ss_ST_tot_sub_two <- summary_statistics(l5o_two_ST)
ss_ST_A_sub_two <- summary_statistics(A_sub_two_ST)
ss_ST_E_sub_two <- summary_statistics(E_sub_two_ST)
ss_ST_H_sub_two <- summary_statistics(H_sub_two_ST)
ss_ST_T_sub_two <- summary_statistics(T_sub_two_ST)
# calculate cullen-frey graphs
cf_ST_tot_sub_two <- cullen_frey(l5o_two_ST)
cf_ST_A_sub_two <- cullen_frey(A_sub_two_ST)
cf_ST_E_sub_two <- cullen_frey(E_sub_two_ST)
cf_ST_H_sub_two <- cullen_frey(H_sub_two_ST)
cf_ST_T_sub_two <- cullen_frey(T_sub_two_ST)
# calculate parameters for normal and beta distribution
par_ST_tot_sub_two <- para_p_algorithm(l5o_two_ST)
par_ST_A_sub_two <- para_p_algorithm(A_sub_two_ST)
par_ST_E_sub_two <- para_p_algorithm(E_sub_two_ST)
par_ST_H_sub_two <- para_p_algorithm(H_sub_two_ST)
par_ST_T_sub_two <- para_p_algorithm(T_sub_two_ST)

## leave 5 out subset (3)
# calculate raincloud plots
rc_ST_tot_sub_three <- rainclouds(l5o_three_ST)
rc_ST_A_sub_three <- rainclouds(A_sub_three_ST)
rc_ST_E_sub_three <- rainclouds(E_sub_three_ST)
rc_ST_H_sub_three <- rainclouds(H_sub_three_ST)
rc_ST_T_sub_three <- rainclouds(T_sub_three_ST)
# calculate summay statistics
ss_ST_tot_sub_three <- summary_statistics(l5o_three_ST)
ss_ST_A_sub_three <- summary_statistics(A_sub_three_ST)
ss_ST_E_sub_three <- summary_statistics(E_sub_three_ST)
ss_ST_H_sub_three <- summary_statistics(H_sub_three_ST)
ss_ST_T_sub_three <- summary_statistics(T_sub_three_ST)
# calculate cullen-frey graphs
cf_ST_tot_sub_three <- cullen_frey(l5o_three_ST)
cf_ST_A_sub_three <- cullen_frey(A_sub_three_ST)
cf_ST_E_sub_three <- cullen_frey(E_sub_three_ST)
cf_ST_H_sub_three <- cullen_frey(H_sub_three_ST)
cf_ST_T_sub_three <- cullen_frey(T_sub_three_ST)
# calculate parameters for normal and beta distribution
par_ST_tot_sub_three <- para_p_algorithm(l5o_three_ST)
par_ST_A_sub_three <- para_p_algorithm(A_sub_three_ST)
par_ST_E_sub_three <- para_p_algorithm(E_sub_three_ST)
par_ST_H_sub_three <- para_p_algorithm(H_sub_three_ST)
par_ST_T_sub_three <- para_p_algorithm(T_sub_three_ST)

## leave 5 out subset (4)
# calculate raincloud plots
rc_ST_tot_sub_four <- rainclouds(l5o_four_ST)
rc_ST_A_sub_four <- rainclouds(A_sub_four_ST)
rc_ST_E_sub_four <- rainclouds(E_sub_four_ST)
rc_ST_H_sub_four <- rainclouds(H_sub_four_ST)
rc_ST_T_sub_four <- rainclouds(T_sub_four_ST)
# calculate summay statistics
ss_ST_tot_sub_four <- summary_statistics(l5o_four_ST)
ss_ST_A_sub_four <- summary_statistics(A_sub_four_ST)
ss_ST_E_sub_four<- summary_statistics(E_sub_four_ST)
ss_ST_H_sub_four <- summary_statistics(H_sub_four_ST)
ss_ST_T_sub_four <- summary_statistics(T_sub_four_ST)
# calculate cullen-frey graphs
cf_ST_tot_sub_four <- cullen_frey(l5o_four_ST)
cf_ST_A_sub_four <- cullen_frey(A_sub_four_ST)
cf_ST_E_sub_four <- cullen_frey(E_sub_four_ST)
cf_ST_H_sub_four <- cullen_frey(H_sub_four_ST)
cf_ST_T_sub_four <- cullen_frey(T_sub_four_ST)
# calculate parameters for normal and beta distribution
par_ST_tot_sub_four <- para_p_algorithm(l5o_four_ST)
par_ST_A_sub_four <- para_p_algorithm(A_sub_four_ST)
par_ST_E_sub_four <- para_p_algorithm(E_sub_four_ST)
par_ST_H_sub_four <- para_p_algorithm(H_sub_four_ST)
par_ST_T_sub_four <- para_p_algorithm(T_sub_four_ST)

## leave 5 BEST out
# calculate raincloud plots
rc_ST_tot_sub_best <- rainclouds(sub_best_ST)
rc_ST_A_sub_best <- rainclouds(A_sub_best_ST)
rc_ST_E_sub_best <- rainclouds(E_sub_best_ST)
rc_ST_H_sub_best <- rainclouds(H_sub_best_ST)
rc_ST_T_sub_best <- rainclouds(T_sub_best_ST)
# calculate summay statistics
ss_ST_tot_sub_best <- summary_statistics(sub_best_ST)
ss_ST_A_sub_best <- summary_statistics(A_sub_best_ST)
ss_ST_E_sub_best <- summary_statistics(E_sub_best_ST)
ss_ST_H_sub_best <- summary_statistics(H_sub_best_ST)
ss_ST_T_sub_best <- summary_statistics(T_sub_best_ST)
# calculate cullen-frey graphs
cf_ST_tot_sub_best <- cullen_frey(sub_best_ST)
cf_ST_A_sub_best <- cullen_frey(A_sub_best_ST)
cf_ST_E_sub_best <- cullen_frey(E_sub_best_ST)
cf_ST_H_sub_best <- cullen_frey(H_sub_best_ST)
cf_ST_T_sub_best <- cullen_frey(T_sub_best_ST)
# calculate parameters for normal and beta distribution
par_ST_tot_sub_best <- para_p_algorithm(sub_best_ST)
par_ST_A_sub_best <- para_p_algorithm(A_sub_best_ST)
par_ST_E_sub_best <- para_p_algorithm(E_sub_best_ST)
par_ST_H_sub_best <- para_p_algorithm(H_sub_best_ST)
par_ST_T_sub_best <- para_p_algorithm(T_sub_best_ST)

## leave 5 WORST out
# calculate raincloud plots
rc_ST_tot_sub_worst <- rainclouds(sub_worst_ST)
rc_ST_A_sub_worst <- rainclouds(A_sub_worst_ST)
rc_ST_E_sub_worst <- rainclouds(E_sub_worst_ST)
rc_ST_H_sub_worst <- rainclouds(H_sub_worst_ST)
rc_ST_T_sub_worst <- rainclouds(T_sub_worst_ST)
# calculate summay statistics
ss_ST_tot_sub_worst <- summary_statistics(sub_worst_ST)
ss_ST_A_sub_worst <- summary_statistics(A_sub_worst_ST)
ss_ST_E_sub_worst <- summary_statistics(E_sub_worst_ST)
ss_ST_H_sub_worst <- summary_statistics(H_sub_worst_ST)
ss_ST_T_sub_worst <- summary_statistics(T_sub_worst_ST)
# calculate cullen-frey graphs
cf_ST_tot_sub_worst <- cullen_frey(sub_worst_ST)
cf_ST_A_sub_worst <- cullen_frey(A_sub_worst_ST)
cf_ST_E_sub_worst <- cullen_frey(E_sub_worst_ST)
cf_ST_H_sub_worst <- cullen_frey(H_sub_worst_ST)
cf_ST_T_sub_worst <- cullen_frey(T_sub_worst_ST)
# calculate parameters for normal and beta distribution
par_ST_tot_sub_worst <- para_p_algorithm(sub_worst_ST)
par_ST_A_sub_worst <- para_p_algorithm(A_sub_worst_ST)
par_ST_E_sub_worst <- para_p_algorithm(E_sub_worst_ST)
par_ST_H_sub_worst <- para_p_algorithm(H_sub_worst_ST)
par_ST_T_sub_worst <- para_p_algorithm(T_sub_worst_ST)