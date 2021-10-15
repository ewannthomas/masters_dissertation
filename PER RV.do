*extraction from txt using infix command for PER RV
infix str FI 1-4 schdle 5-7 str Qtr 8-9 str Visit 10-11 Sector 12-12 ///
Ste_Ut 13-14 Dst_cde 15-16 NSS_reg 17-19 strtm 20-21 ///
sb_strtm 22-23 sub_smpl 24-24 FOD_sb_reg 25-28 FSU 29-33 ///
Smple_sg_sb_no 34-34 Scnd_stg_strtm 35-35 smpl_HH_no 36-37 ///
per_sn 38-39 relatn_hd 40-40 sex 41-41 age 42-44 marital_stat 45-45 ///
gen_ed_lev 46-47 tech_ed_lev 48-49 form_ed_lev 50-51 atten_ed_inst 52-53 /*
*/stat_cde_cwa_1_7thday 54-55 indus_cde_act_1_7thday 56-57 /// 
hrs_worked_act_1_7thday 58-59 wage_earn_act_1_7thday 60-64 ///
stat_cde_act_2_7thday 65-66 indus_cde_act_2_7thday 67-68 ///
hrs_worked_act_2_7thday 69-70 wage_earn_act_2_7thday 71-75 ///
tot_hrs_worked_7thday 76-77 hrs_addinl_work_7thday 78-79 /*
*/stat_cde_cwa_1_6thday 80-81 indus_cde_act_1_6thday 82-83 /// 
hrs_worked_act_1_6thday 84-85 wage_earn_act_1_6thday 86-90 ///
stat_cde_cwa_2_6thday 91-92 indus_cde_act_2_6thday 93-94 ///
hrs_worked_act_2_6thday 95-96 wage_earn_act_2_6thday 97-101 ///
tot_hrs_worked_6thday 102-103 hrs_addinl_work_6thday 104-105 /*
*/stat_cde_cwa_1_5thday 106-107 indus_cde_act_1_5thday 108-109 /// 
hrs_worked_act_1_5thday 110-111 wage_earn_act_1_5thday 112-116 ///
stat_cde_cwa_2_5thday 117-118 indus_cde_act_2_5thday 119-120 ///
hrs_worked_act_2_5thday 121-122 wage_earn_act_2_5thday 123-127 ///
tot_hrs_worked_5thday 128-129 hrs_addinl_work_5thday 130-131 /*
*/stat_cde_cwa_1_4thday 132-133 indus_cde_act_1_4thday 134-135 /// 
hrs_worked_act_1_4thday 136-137 wage_earn_act_1_4thday 138-142 ///
stat_cde_cwa_2_4thday 143-144 indus_cde_act_2_4thday 145-146 ///
hrs_worked_act_2_4thday 147-148 wage_earn_act_2_4thday 149-153 ///
tot_hrs_worked_4thday 154-155 hrs_addinl_work_4thday 156-157 /*
*/stat_cde_cwa_1_3rdday 158-159 indus_cde_act_1_3rdday 160-161 /// 
hrs_worked_act_1_3rdday 162-163 wage_earn_act_1_3rdday 164-168 ///
stat_cde_cwa_2_3rdday 169-170 indus_cde_act_2_3rdday 171-172 ///
hrs_worked_act_2_3rdday 173-174 wage_earn_act_2_3rdday 175-179 ///
tot_hrs_worked_3rdday 180-181 hrs_addinl_work_3rdday 182-183 /*
*/stat_cde_cwa_1_2ndday 184-185 indus_cde_act_1_2ndday 186-187 /// 
hrs_worked_act_1_2ndday 188-189 wage_earn_act_1_2ndday 190-194 ///
stat_cde_cwa_2_2ndday 195-196 indus_cde_act_2_2ndday 197-198 ///
hrs_worked_act_2_2ndday 199-200 wage_earn_act_2_2ndday 201-205 ///
tot_hrs_worked_2ndday 206-207 hrs_addinl_work_2ndday 208-209 /*
*/stat_cde_cwa_1_1stday 210-211 indus_cde_act_1_1stday 212-213 /// 
hrs_worked_act_1_1stday 214-215 wage_earn_act_1_1stday 216-220 ///
stat_cde_cwa_2_1stday 221-222 indus_cde_act_2_1stday 223-224 ///
hrs_worked_act_2_1stday 225-226 wage_earn_act_2_1stday 227-231 ///
tot_hrs_worked_1stday 232-233 hrs_addinl_work_1stday 234-235 /*
*/CWS 236-237 indus_cde 238-239 occup_cde 240-242 earn_reg_act 243-250 ///
gross_earn_self_emp 251-258 NSS 259-261 NSC 262-264 mult 265-274 no_qtr 275-275 ///
using "E:\PLFS\FPER_RV.txt"


*labelling variables on 23/01/2020
*Data Cleaning 

label variable FI "File Identification"
label variable schdle "Schedule"
label variable Qtr "Quarter"
label variable Visit "Visit"
label variable Sector "Sector"
label variable Ste_Ut "State/UT"
label variable Dst_cde "District Code"
label variable NSS_reg "NSS Region"
label variable strtm "Stratum"
label variable sb_strtm "Sub Stratum"
label variable sub_smpl "Sub Sample"
label variable FOD_sb_reg "FOD Sub Region"
label variable FSU "FSU"
label variable Smple_sg_sb_no "Sample Sg/Sb No."
label variable Scnd_stg_strtm "Second Stage Stratum"
label variable smpl_HH_no "Sample HH no."

*commands specific to PER RV done on 23/01/2020 

label variable per_sn "Person sn" 
label variable relatn_hd "relate to head"
label variable sex "sex"
label variable age "age"
label variable marital_stat "marital status"
label variable gen_ed_lev "gen edu level"
label variable tech_ed_lev "tech edu level"
label variable form_ed_lev "form ed level"
label variable atten_ed_inst "atten in ed inst"



*created on 23/01/2020
*prin and subs Current Weekly Activity(CWA) for 7th-1st day of the week
*for 7th day 
label variable stat_cde_cwa_1_7thday "status code for cwa"
label variable indus_cde_act_1_7thday "indus code for act 1"
label variable hrs_worked_act_1_7thday "hrs worked for act 1 on 7th day"
label variable wage_earn_act_1_7thday "wage earned for act 1 on 7th day"

label variable stat_cde_act_2_7thday "status code"
label variable indus_cde_act_2_7thday "indus code for act 2"
label variable hrs_worked_act_2_7thday "hrs worked for act 2 on 7th day"
label variable wage_earn_act_2_7thday "wage earned for act 2 on 7th day"
label variable tot_hrs_worked_7thday "total hrs worked on 7th day"
label variable hrs_addinl_work_7thday "hrs of additional work on 7th day"

*codes altered using 7th day code for block 6, 3.2-3.7 columns 4-9
*for 6th day
label variable stat_cde_cwa_1_6thday "status code for cwa 1"
label variable indus_cde_act_1_6thday "indus code for act 1"
label variable hrs_worked_act_1_6thday "hrs worked for act 1 on 6th day"
label variable wage_earn_act_1_6thday "wage earned for act 1 on 6th day"

label variable stat_cde_cwa_2_6thday "status code for cwa 2"
label variable indus_cde_act_2_6thday "indus code for act 2"
label variable hrs_worked_act_2_6thday "hrs worked for act 2 on 6th day"
label variable wage_earn_act_2_6thday "wage earned for act 2 on 6th day"
label variable tot_hrs_worked_6thday "total hrs worked on 6th day"
label variable hrs_addinl_work_6thday "hrs of additional work on 6th day"

*for 5th day
label variable stat_cde_cwa_1_5thday "status code for cwa 1"
label variable indus_cde_act_1_5thday "indus code for act 1"
label variable hrs_worked_act_1_5thday "hrs worked for act 1 on 5th day"
label variable wage_earn_act_1_5thday "wage earned for act 1 on 5th day"

label variable stat_cde_cwa_2_5thday "status code for cwa 2"
label variable indus_cde_act_2_5thday "indus code for act 2"
label variable hrs_worked_act_2_5thday "hrs worked for act 2 on 5th day"
label variable wage_earn_act_2_5thday "wage earned for act 2 on 5th day"
label variable tot_hrs_worked_5thday "total hrs worked on 5th day"
label variable hrs_addinl_work_5thday "hrs of additional work on 5th day"

*for 4th day
label variable stat_cde_cwa_1_4thday "status code for cwa 1"
label variable indus_cde_act_1_4thday "indus code for act 1"
label variable hrs_worked_act_1_4thday "hrs worked for act 1 on 4th day"
label variable wage_earn_act_1_4thday "wage earned for act 1 on 4th day"

label variable stat_cde_cwa_2_4thday "status code for cwa 2"
label variable indus_cde_act_2_4thday "indus code for act 2"
label variable hrs_worked_act_2_4thday "hrs worked for act 2 on 4th day"
label variable wage_earn_act_2_4thday "wage earned for act 2 on 4th day"
label variable tot_hrs_worked_4thday "total hrs worked on 4th day"
label variable hrs_addinl_work_4thday "hrs of additional work on 4th day"

*for 3rd day
label variable stat_cde_cwa_1_3rdday "status code for cwa 1"
label variable indus_cde_act_1_3rdday "indus code for act 1"
label variable hrs_worked_act_1_3rdday "hrs worked for act 1 on 3rd day"
label variable wage_earn_act_1_3rdday "wage earned for act 1 on 3rd day"

label variable stat_cde_cwa_2_3rdday "status code for cwa 2"
label variable indus_cde_act_2_3rdday "indus code for act 2"
label variable hrs_worked_act_2_3rdday "hrs worked for act 2 on 3rd day"
label variable wage_earn_act_2_3rdday "wage earned for act 2 on 3rd day"
label variable tot_hrs_worked_3rdday "total hrs worked on 3rd day"
label variable hrs_addinl_work_3rdday "hrs of additional work on 3rd day"

*for 2nd day
label variable stat_cde_cwa_1_2ndday "status code for cwa 1"
label variable indus_cde_act_1_2ndday "indus code for act 1"
label variable hrs_worked_act_1_2ndday "hrs worked for act 1 on 2nd day"
label variable wage_earn_act_1_2ndday "wage earned for act 1 on 2nd day"

label variable stat_cde_cwa_2_2ndday "status code for cwa 2"
label variable indus_cde_act_2_2ndday "indus code for act 2"
label variable hrs_worked_act_2_2ndday "hrs worked for act 2 on 2nd day"
label variable wage_earn_act_2_2ndday "wage earned for act 2 on 2nd day"
label variable tot_hrs_worked_2ndday "total hrs worked on 2nd day"
label variable hrs_addinl_work_2ndday "hrs of additional work on 2nd day"

*for 1st day
label variable stat_cde_cwa_1_1stday "status code for cwa 1"
label variable indus_cde_act_1_1stday "indus code for act 1"
label variable hrs_worked_act_1_1stday "hrs worked for act 1 on 1st day"
label variable wage_earn_act_1_1stday "wage earned for act 1 on 1st day"

label variable stat_cde_cwa_2_1stday "status code for cwa 2"
label variable indus_cde_act_2_1stday "indus code for act 2"
label variable hrs_worked_act_2_1stday "hrs worked for act 2 on 1st day"
label variable wage_earn_act_2_1stday "wage earned for act 2 on 1st day"
label variable tot_hrs_worked_1stday "total hrs worked on 1st day"
label variable hrs_addinl_work_1stday "hrs of additional work on 1st day"

*codes from cws
label variable CWS "current weekly status"
label variable indus_cde "indus code cws"
label variable occup_cde "occup code cws"
label variable earn_reg_act "earnings of last month for regular act"
label variable gross_earn_self_emp "gross earn of self emp during last 30 days"
label variable NSS "NSS"
label variable NSC "NSC"
label variable mult "multiplier"
label variable no_qtr "occur of state qtr"





save "E:\PLFS\PER RV.dta", replace




*Operations on 15/07/2020
*Creating Personal Unique ID for all observations
isid Qtr Visit Sector Ste_Ut Dst_cde NSS_reg strtm sb_strtm FSU Smple_sg_sb_no Scnd_stg_strtm smpl_HH_no per_sn
egen Per_UID= concat(Qtr Visit Sector Ste_Ut Dst_cde NSS_reg strtm sb_strtm FSU Smple_sg_sb_no Scnd_stg_strtm smpl_HH_no per_sn)
isid Per_UID



