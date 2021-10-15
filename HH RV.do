* This is the do file for Households(HH) in first visit(FV) and revisit(RV). 

*Loading source file 
use "E:\PLFS\HH RV.dta"

*Data Cleaning 
rename V1 FI
label variable FI "File Identification"
rename V2 schdle
label variable schdle Schedule
rename V3 Qtr
label variable Qtr Quarter
rename V4 Visit
label variable Visit Visit
rename V5 Sector
label variable Sector Sector
rename V6 Ste_Ut
label variable Ste_Ut "State/UT"
rename V7 Dst_cde
label variable Dst_cde "District Code"
rename V8 NSS_reg
label variable NSS_reg "NSS Region"
rename V9 strtm
label variable strtm Stratum
rename V10 sb_strtm
label variable sb_strtm "Sub Stratum"
rename V11 sub_smpl
label variable sub_smpl "Sub Sample"
rename V12 FOD_sb_reg
label variable FOD_sb_reg "FOD Sub Region"
rename V13 FSU
label variable FSU FSU
rename V14 Smple_sg_sb_no
label variable Smple_sg_sb_no "Sample Sg/Sb No."
rename V17 scnd_stg_strtm
label variable scnd_stg_strtm "Second Stage Stratum"
label variable scnd_stg_strtm "Response Code"
rename scnd_stg_strtm Rspnse_cde
rename V15 Scnd_stg_strtm
label variable Scnd_stg_strtm "Second Stage Stratum"
rename V16 smpl_HH_no
label variable smpl_HH_no "Sample HH no."
rename Rspnse_cde surv_month
label variable surv_month "Month of Survey"
rename V18 Rspns_cde
label variable Rspns_cde "Response code"
rename V19 surv_cde
label variable surv_cde "Survey Code"
rename V20 org_HH_substit
label variable org_HH_substit "Reason for substitution of original HH"
rename V21 HH_size
label variable HH_size "HH size"
rename V22 HH_type
label variable HH_type "HH Type"
rename V23 relgn
label variable relgn "Religion"
rename V24 sc_grp
label variable sc_grp "Social Group"
rename V25 HH_MCE
label variable HH_MCE "HH month consmpn expend"
rename V26 Infmnt_SN
label variable Infmnt_SN "Informant Serial No."
rename V27 surv_dt
label variable surv_dt "Survey Date"
rename V28 tot_canvs_time
label variable tot_canvs_time "total canvass time"
rename V29 NSS
rename V30 NSC
rename V31 MULT
label variable MULT "Multiplier"
rename V32 Qtr_occrnc
label variable Qtr_occrnc "occur state in qtr"
rename Qtr_occrnc Ste_occur_qtr

*Defining and assigning value labels
label define Sector 1 "Rural" 2 "Urban"
label values Sector Sector


label define Religion 1 "Hinduism" 2 "Islam" 3 "Christianity" 4 "Sikhism" 5 "Jainism" 6 "Buddhism" 7 "Zoroastrianism" 9 "others"
label values relgn Religion

* labels i tried on 29/10/2019
label define SocialGroup 1 "scheduled tribe" 2 "scheduled caste" 3 "other backward class" 9 "others"
label values sc_grp SocialGroup 

label define SurveyCode 1 "Original" 2 "Substitute" 3 "Casualty"
label values surv_cde SurveyCode

label define STATEandUT 1 "Jammu & Kashmir" 2 "Himachal Pradesh" 3 "Punjab"
label values Ste_Ut STATEandUT 

label define STATEandUT 4 "Chandigarh" 5 "Uttrakhand" 6 "Haryana" 7 "Delhi" 8 "Rajasthan" , add
label define STATEandUT 9 "Uttar Pradesh" 10 "Bihar" 11 "Sikkim" 12 "Arunachal Pradesh" 13 "Nagaland" 14 "Manipur" 15 "Mizoram" 16 "Tripura" 17 "Meghalaya" 18 "Assam" 19 "West Bengal" 20 "Jharkhand" , add
label define STATEandUT 21 "Odisha" 22 "Chhattisgarh" 23 "Madhya Pradesh" 24 "Gujarat" 25 "Daman & Diu" 26 "D & N Haveli" 27 "Maharashtra" 28 "Andhra Pradesh" 29 "Karnataka" 30 "Goa" 31 "Lakshadweep" 32 "Kerala" 33 "Tamil Nadu" 34 "Puducherry" 35 "A & N Island" 36 "Telangana" , add


*Descriptive statistics and graphics
tab relgn
tab relgn Sector
summarize HH_MCE
summarize HH_MCE, detail
bysort Sector: summarize HH_MCE
histogram HH_MCE, by(Sector)
histogram HH_MCE, bin(6) by(Sector)
histogram HH_MCE, bin(30) by(Sector)

*Saving Source file with modifications
save "E:\PLFS\HH RV.dta", replace



