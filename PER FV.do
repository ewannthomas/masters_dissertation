* This is the do file for Persons (PER) in first visit(FV).

*Loading source file 
use "E:\PLFS\PER FV.dta"
*hashtag for the pend version
use "F:\Confidential\PER FV - copy.dta"

*Data Cleaning 
rename V1 FI
label variable FI "File Identification"
rename V2 schdle
label variable schdle "Schedule"
rename V3 Qtr
label variable Qtr "Quarter"
rename V4 Visit
label variable Visit "Visit"
rename V5 Sector
label variable Sector "Sector"
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
rename V15 Scnd_stg_strtm
label variable Scnd_stg_strtm "Second Stage Stratum"
rename V16 smpl_HH_no
label variable smpl_HH_no "Sample HH no."

*commands specific to PER FV done on 5/11/2019 
rename V17 per_sn
label variable per_sn "Person sn" 
rename V18 relatn_hd
label variable relatn_hd "relate to head"
rename V19 sex
label variable sex "sex"
rename V20 age
label variable age "age"
rename V21 marital_stat
label variable marital_stat "marital status"
rename V22 gen_ed_lev
label variable gen_ed_lev "gen edu level"
rename V23 tech_ed_lev
label variable tech_ed_lev "tech edu level"
rename V24 for_ed_yrs
label variable for_ed_yrs "form"
rename for_ed_yrs form_ed_lev
label variable form_ed_lev "form ed level"
rename V25 atten_ed_inst
label variable atten_ed_inst "atten in ed inst"
rename V26 voc_tech_ed_stat
label variable voc_tech_ed_stat "voc or tech ed status"
rename V27 train_comp_last_yr
label variable train_comp_last_yr "training comp in last year"
rename V28 train_field
label variable train_field "field of training"
rename V29 train_dur
label variable train_dur "training duration"
rename V30 train_type
label variable train_type "training type"
rename V31 fund_for_train
label variable fund_for_train "fund for train"
rename V32 stat_cde
label variable stat_cde "status code"
rename V33 Indust_cde
label variable Indust_cde "indus code NIC"
rename V34 occup_cde
label variable occup_cde "occup code NCO"
rename V35 subs_work
label variable subs_work "subsdiary work"
rename V36 loc_workplc
label variable loc_workplc "loc workplc code"
rename V37 prin_enterp_cde
label variable prin_enterp_cde "prin enterp type code"
rename V38 streng_work_p_enterp
label variable streng_work_p_enterp "no of workers in p enterp"
rename V39 p_job_contract_type
label variable p_job_contract_type "p job contract type"
rename V40 paid_leave_elig_p
label variable paid_leave_elig_p "eligible of paid leave in p"
rename V41 sco_sec_ben_p
rename sco_sec_ben_p soc_sec_ben_p
label variable soc_sec_ben_p "soc sec benefits p"
rename V42 stat_cde_s
rename stat_cde stat_cde_P
label variable stat_cde_P "status code P"
label variable stat_cde_s "status code S"
rename V43 Indus_cde
label variable Indus_cde "indus code s"
rename Indus_cde indus_cde_s
rename Indust_cde Indust_cde_p
rename occup_cde occup_cde_p
rename V44 occup_cde_s
label variable occup_cde_s "occup code s"
rename V45 loc_workp_s
rename loc_workp_s loc_workplc_s
label variable loc_workplc_s "loc workplc s"
rename loc_workplc loc_workplc_p
label variable loc_workplc_p "loc workplc code p"
rename V46 enterp_cdde
rename enterp_cdde enterp_cde_s
label variable enterp_cde_s "enterp type s"
rename V47 streng_work_s_enterp
label variable streng_work_s_enterp "no of workers in s enterp"
rename V48 s_job_contract_type
label variable s_job_contract_type "s job contract type"
rename V49 paid_leave_elig_s
label variable paid_leave_elig_s "eligible of paid leave in s"
rename V50 soc_sec_ben_s
label variable soc_sec_ben_s "soc sec benefits s"

*created on 6/11/2019
*prin and subs Current Weekly Activity(CWA) for 7th-1st day of the week
*for 7th day 
rename V51 stat_cde_cwa_1_7thday
label variable stat_cde_cwa_1_7thday "status code for cwa"
rename V52 indus_cde_act_1_7thday
label variable indus_cde_act_1_7thday "indus code for act 1"
rename V53 hrs_worked_act_1_7thday
label variable hrs_worked_act_1_7thday "hrs worked for act 1 on 7th day"
rename V54 wage_earn_act_1_7thday
label variable wage_earn_act_1_7thday "wage earned for act 1 on 7th day"

rename V55 stat_cde_act_2_7thday
label variable stat_cde_act_2_7thday "status code"
rename V56 indus_cde_act_2_7thday
label variable indus_cde_act_2_7thday "indus code for act 2"
rename V57 hrs_worked_act_2_7thday
label variable hrs_worked_act_2_7thday "hrs worked for act 2 on 7th day"
rename V58 wage_earn_act_2_7thday
label variable wage_earn_act_2_7thday "wage earned for act 2 on 7th day"
rename V59 tot_hrs_worked_7thday
label variable tot_hrs_worked_7thday "total hrs worked on 7th day"
rename V60 hrs_addinl_work_7thday
label variable hrs_addinl_work_7thday "hrs of additional work on 7th day"

*codes altered using 7th day code for block 6, 3.2-3.7 columns 4-9
*for 6th day
rename V61 stat_cde_cwa_1_6thday
label variable stat_cde_cwa_1_6thday "status code for cwa 1"
rename V62 indus_cde_act_1_6thday
label variable indus_cde_act_1_6thday "indus code for act 1"
rename V63 hrs_worked_act_1_6thday
label variable hrs_worked_act_1_6thday "hrs worked for act 1 on 6th day"
rename V64 wage_earn_act_1_6thday
label variable wage_earn_act_1_6thday "wage earned for act 1 on 6th day"

rename V65 stat_cde_cwa_2_6thday
label variable stat_cde_cwa_2_6thday "status code for cwa 2"
rename V66 indus_cde_act_2_6thday
label variable indus_cde_act_2_6thday "indus code for act 2"
rename V67 hrs_worked_act_2_6thday
label variable hrs_worked_act_2_6thday "hrs worked for act 2 on 6th day"
rename V68 wage_earn_act_2_6thday
label variable wage_earn_act_2_6thday "wage earned for act 2 on 6th day"
rename V69 tot_hrs_worked_6thday
label variable tot_hrs_worked_6thday "total hrs worked on 6th day"
rename V70 hrs_addinl_work_6thday
label variable hrs_addinl_work_6thday "hrs of additional work on 6th day"

*for 5th day
rename V71 stat_cde_cwa_1_5thday
label variable stat_cde_cwa_1_5thday "status code for cwa 1"
rename V72 indus_cde_act_1_5thday
label variable indus_cde_act_1_5thday "indus code for act 1"
rename V73 hrs_worked_act_1_5thday
label variable hrs_worked_act_1_5thday "hrs worked for act 1 on 5th day"
rename V74 wage_earn_act_1_5thday
label variable wage_earn_act_1_5thday "wage earned for act 1 on 5th day"

rename V75 stat_cde_cwa_2_5thday
label variable stat_cde_cwa_2_5thday "status code for cwa 2"
rename V76 indus_cde_act_2_5thday
label variable indus_cde_act_2_5thday "indus code for act 2"
rename V77 hrs_worked_act_2_5thday
label variable hrs_worked_act_2_5thday "hrs worked for act 2 on 5th day"
rename V78 wage_earn_act_2_5thday
label variable wage_earn_act_2_5thday "wage earned for act 2 on 5th day"
rename V79 tot_hrs_worked_5thday
label variable tot_hrs_worked_5thday "total hrs worked on 5th day"
rename V80 hrs_addinl_work_5thday
label variable hrs_addinl_work_5thday "hrs of additional work on 5th day"

*for 4th day
rename V81 stat_cde_cwa_1_4thday
label variable stat_cde_cwa_1_4thday "status code for cwa 1"
rename V82 indus_cde_act_1_4thday
label variable indus_cde_act_1_4thday "indus code for act 1"
rename V83 hrs_worked_act_1_4thday
label variable hrs_worked_act_1_4thday "hrs worked for act 1 on 4th day"
rename V84 wage_earn_act_1_4thday
label variable wage_earn_act_1_4thday "wage earned for act 1 on 4th day"

rename V85 stat_cde_cwa_2_4thday
label variable stat_cde_cwa_2_4thday "status code for cwa 2"
rename V86 indus_cde_act_2_4thday
label variable indus_cde_act_2_4thday "indus code for act 2"
rename V87 hrs_worked_act_2_4thday
label variable hrs_worked_act_2_4thday "hrs worked for act 2 on 4th day"
rename V88 wage_earn_act_2_4thday
label variable wage_earn_act_2_4thday "wage earned for act 2 on 4th day"
rename V89 tot_hrs_worked_4thday
label variable tot_hrs_worked_4thday "total hrs worked on 4th day"
rename V90 hrs_addinl_work_4thday
label variable hrs_addinl_work_4thday "hrs of additional work on 4th day"

*for 3rd day
rename V91 stat_cde_cwa_1_3rdday
label variable stat_cde_cwa_1_3rdday "status code for cwa 1"
rename V92 indus_cde_act_1_3rdday
label variable indus_cde_act_1_3rdday "indus code for act 1"
rename V93 hrs_worked_act_1_3rdday
label variable hrs_worked_act_1_3rdday "hrs worked for act 1 on 3rd day"
rename V94 wage_earn_act_1_3rdday
label variable wage_earn_act_1_3rdday "wage earned for act 1 on 3rd day"

rename V95 stat_cde_cwa_2_3rdday
label variable stat_cde_cwa_2_3rdday "status code for cwa 2"
rename V96 indus_cde_act_2_3rdday
label variable indus_cde_act_2_3rdday "indus code for act 2"
rename V97 hrs_worked_act_2_3rdday
label variable hrs_worked_act_2_3rdday "hrs worked for act 2 on 3rd day"
rename V98 wage_earn_act_2_3rdday
label variable wage_earn_act_2_3rdday "wage earned for act 2 on 3rd day"
rename V99 tot_hrs_worked_3rdday
label variable tot_hrs_worked_3rdday "total hrs worked on 3rd day"
rename V100 hrs_addinl_work_3rdday
label variable hrs_addinl_work_3rdday "hrs of additional work on 3rd day"

*for 2nd day
rename V101 stat_cde_cwa_1_2ndday
label variable stat_cde_cwa_1_2ndday "status code for cwa 1"
rename V102 indus_cde_act_1_2ndday
label variable indus_cde_act_1_2ndday "indus code for act 1"
rename V103 hrs_worked_act_1_2ndday
label variable hrs_worked_act_1_2ndday "hrs worked for act 1 on 2nd day"
rename V104 wage_earn_act_1_2ndday
label variable wage_earn_act_1_2ndday "wage earned for act 1 on 2nd day"

rename V105 stat_cde_cwa_2_2ndday
label variable stat_cde_cwa_2_2ndday "status code for cwa 2"
rename V106 indus_cde_act_2_2ndday
label variable indus_cde_act_2_2ndday "indus code for act 2"
rename V107 hrs_worked_act_2_2ndday
label variable hrs_worked_act_2_2ndday "hrs worked for act 2 on 2nd day"
rename V108 wage_earn_act_2_2ndday
label variable wage_earn_act_2_2ndday "wage earned for act 2 on 2nd day"
rename V109 tot_hrs_worked_2ndday
label variable tot_hrs_worked_2ndday "total hrs worked on 2nd day"
rename V110 hrs_addinl_work_2ndday
label variable hrs_addinl_work_2ndday "hrs of additional work on 2nd day"

*for 1st day
rename V111 stat_cde_cwa_1_1stday
label variable stat_cde_cwa_1_1stday "status code for cwa 1"
rename V112 indus_cde_act_1_1stday
label variable indus_cde_act_1_1stday "indus code for act 1"
rename V113 hrs_worked_act_1_1stday
label variable hrs_worked_act_1_1stday "hrs worked for act 1 on 1st day"
rename V114 wage_earn_act_1_1stday
label variable wage_earn_act_1_1stday "wage earned for act 1 on 1st day"

rename V115 stat_cde_cwa_2_1stday
label variable stat_cde_cwa_2_1stday "status code for cwa 2"
rename V116 indus_cde_act_2_1stday
label variable indus_cde_act_2_1stday "indus code for act 2"
rename V117 hrs_worked_act_2_1stday
label variable hrs_worked_act_2_1stday "hrs worked for act 2 on 1st day"
rename V118 wage_earn_act_2_1stday
label variable wage_earn_act_2_1stday "wage earned for act 2 on 1st day"
rename V119 tot_hrs_worked_1stday
label variable tot_hrs_worked_1stday "total hrs worked on 1st day"
rename V120 hrs_addinl_work_1stday
label variable hrs_addinl_work_1stday "hrs of additional work on 1st day"

*codes from v121 cws
rename V121 CWS
label variable CWS "current weekly status"
rename V122 indus_cde
label variable indus_cde "indus code cws"
rename V123 occup_cde
label variable occup_cde "occup code cws"
rename V124 earn_reg_act
label variable earn_reg_act "earnings of last month for regular act"
rename V125 gross_earn_self_emp
label variable gross_earn_self_emp "gross earn of self emp during last 30 days"
rename V126 NSS
label variable NSS "NSS"
rename V127 NSC
label variable NSC "NSC"
rename V128 mult
label variable mult "multiplier"
rename V129 no_qtr
label variable no_qtr "occur of state qtr"

*Defining Labels of Demographics
*defining labels
label define RelationToHead 1 "self" 2 "spouse of head" 
label values relatn_hd RelationToHead
label define RelationToHead 3 "married child" 4 "spouse of married child" ///
5 "unmarried child" 6 "grandchild" 7 "father/mother/father-in-law/mother-in-law" ///
8 "brother/sister/brother-in-law/sister-in-law/other relatives" ///
9 "servants/employees/other non-relatives", add

label define MaritalStatus 1 "never married" 2 "currently married" 3 "widowed" 4 "divorced/separated"
label values marital_stat MaritalStatus

*Defining Labels regarding Education
label define GeneralEduLevel 1 "not literate" 2 "literate without formal schooling: EGS/ NFEC/ AEC" ///
3 "literate without formal schooling: TLC" 4 "literate without formal schooling: others" ///
5 "literate: below primary" 6 "literate: primary" 7 "literate: middle" ///
8 "literate: secondary" 10 "literate: higher secondary" 11 "literate: diploma/certificate course" ///
12 "literate: graduate" 13 "literate: postgraduate and above"
label values gen_ed_lev GeneralEduLevel

label define Sex 1 "male" 2 "female" 3 "third gender"
label values sex Sex


*label defining conducted on 23/01/2020
label define TechnicalEduLevel 1 "no technical education" 2 "technical degree in: agriculture" ///
3 "technical degree in: engineering/technology" 4 "technical degree in: medicine" ///
5 "technical degree in: crafts" 6 "technical degree in: other subjects" ///
7 "diploma or certificate (below graduate level) in: agriculture" ///
8 "diploma or certificate (below graduate level) in: engineering/technology" ///
9 "diploma or certificate (below graduate level) in: medicine" 10 "diploma or certificate (below graduate level) in: crafts" ///
11 "diploma or certificate (below graduate level) in: other subjects"
label values tech_ed_lev TechnicalEduLevel
label define TechnicalEduLevel 12 "diploma or certificate (graduate and above level) in: agriculture" ///
13 "diploma or certificate (graduate and above level) in: engineering/technology" ///
14 "diploma or certificate (graduate and above level) in: medicine" 15 "diploma or certificate (graduate and above level) in: crafts" ///
16 "diploma or certificate (graduate and above level) in: other subjects", add

label define CurrenAttentEduInst 1 "never attended: school too far" 2 "never attended: to supplement household income" ///
3 "never attended: education not considered necessary" ///
4 "never attended: to attend domestic chores " 5"never attended: others" ///
11 "ever attended but currently not attending:school too far" ///
12 "ever attended but currently not attending:to supplement household income" 
label define CurrenAttentEduInst 13 "ever attended but currently not attending:education not considered necessary" ///
14 "ever attended but currently not attending:to attend domestic chores" ///
15 "ever attended but currently not attending:others", add 
label define CurrenAttentEduInst 21 "currently attending in:EGS/ NFEC/ AEC" 22 "currently attending in:TLC" 23 "currently attending in:pre-primary (nursery/ Kindergarten, etc.)" ///
24 "currently attending in:primary (class I to IV/ V)" 25 "currently attending in:middle" 26 "currently attending in:secondary" 27 "currently attending in:higher secondary" ///
28 "currently attending in: graduate in: agriculture" 29 "currently attending in:graduate in:engineering/ technology" ///
30 "currently attending in:graduate in:medicine" 31 "currently attending in:graduate in:other subjects" ///
32 "currently attending in:post graduate and above" 33 "currently attending in:diploma or certificate (below graduate level) in:agriculture" ///
34 "currently attending in:diploma or certificate (below graduate level) in:engineering/ technology" 35 "currently attending in:diploma or certificate (below graduate level) in:medicine" ///
36 "currently attending in:diploma or certificate (below graduate level) in:crafts" 37 "currently attending in:diploma or certificate (below graduate level) in:other subjects" ///
38 "currently attending in:diploma or certificate(graduate level) in:agriculture" 39 "currently attending in:diploma or certificate(graduate level) in: engineering/ technology" ///
40 "currently attending in:diploma or certificate(graduate level) in:medicine" ///
41 "currently attending in:diploma or certificate(graduate level) in:crafts" 42 "currently attending in:diploma or certificate(graduate level) in:other subjects" ///
43 "currently attending in:diploma or certificate in post graduate and above level", add
label values atten_ed_inst CurrenAttentEduInst

label define VocTechEduStatus 1 "yes: received formal vocational/technical training" ///
2 "yes: received vocational/technical training other than formal vocational/technical training: hereditary" ///
3 "yes: received vocational/technical training other than formal vocational/technical training:self-leanring" ///
4 "yes: received vocational/technical training other than formal vocational/technical training:learning on the job" ///
5 "yes: received vocational/technical training other than formal vocational/technical training:others" 6 "did not receive any vocational/technical training"
label values voc_tech_ed_stat VocTechEduStatus


*label defining conducted on 24/01/2020
label define TrainCompLastYr 1 "Yes" 2 "No"
label values train_comp_last_yr TrainCompLastYr

label define FieldOfTrain 1 "aerospace and aviation" 2 "agriculture, non-crop based agriculture, food processing" 3 "allied manufacturing gems and jewellery, leather, rubber, furniture and fittings, printing" ///
4 "artisan/craftsman/handicraft/creative arts and cottage based production" 5 "automotive" 6 "beauty and wellness" 7 "chemical engineering, hydrocarbons, chemicals and petrochemicals" ///
8 "civil engineering- construction, plumbing, paints and coatings" 9 "electrical, power and electronics" 10 "healthcare and life sciences" 11 "hospitality and tourism" 12 "iron and steel, mining, earthmoving and infra building" ///
13 "IT-ITeS" 14 "logistics" 15 "mechanical engineeringcapital goods, strategic manufacturing" 16 "media-journalism, mass communication and entertainment" 17 "office and business related work" 18 "security" 19 "telecom" ///
20 "textiles and handlooms, apparels" 21 "work related to childcare, nutrition, pre-school and crèche" 99 "other"
label values train_field FieldOfTrain


label define TrainDuration 1 "less than 3 months" 2 "3 months or more but less than 6 months" 3 "6 months or more but less than 12 months" 4 "12 months or more but less than 18 months" ///
5 "18 months or more but less than 24 months" 6 "24 months or more"
label values train_dur TrainDuration


label define TrainType 1 "on the job" 2 "other than on the job: part time" 3 "full time"
label values train_type TrainType


label define TrainFund 1 "govt" 2 "own funding" 9 "others"
label values fund_for_train TrainFund 

*Defining Labels of Principal Activity

label define StatusCodePrin 11 "worked in h.h. enterprise (self-employed): own account worker" 12 "worked in h.h. enterprise (self-employed):employer"  21 "worked as helper in h.h. enterprise (unpaid family worker)" ///
31 "worked as regular salaried/ wage employee" 41 "worked as casual wage labour: in public works" 51 "worked as casual wage labour:in other types of  work" 81 "did not work but was seeking and/or available for work" ///
91 "attended educational institution" 92 "attended domestic duties only" ///
93 "attended domestic duties and was also engaged in free collection of goods (vegetables, roots, firewood, cattle feed, etc.), sewing, tailoring, weaving, etc. for household use" /// 
94 "rentiers, pensioners , remittance recipients, etc." 95 "not able to work due to disability" ///
97 "others (including begging, prostitution,  etc.)"
label values stat_cde_P StatusCodePrin
label define StatusCodePrin 99 "children of age 0-4 years", add 



*Labelling done on 28/01/2020
label define EngageSubWork 1 "Yes" 2 "No"
label values subs_work  EngageSubWork
 

 *Labelling done on 30/01/2020
label define LocWorkPlcPrin  10 "workplace in rural areas and located in: own dwelling unit" 11 "workplace in rural areas and located in:structure attached to own dwelling unit" ///
12 "workplace in rural areas and located in:open area adjacent to own dwelling unit" 13 "workplace in rural areas and located in:detached structure adjacent to own dwelling unit13" ///
14 "workplace in rural areas and located in:own enterprise/unit/office/shop but away from own dwelling" 15 "workplace in rural areas and located in:employer’s dwelling unit" ///
16 "workplace in rural areas and located in:employer’s enterprise/unit/office/shop but outside employer’s dwelling" 17 "workplace in rural areas and located in:street with fixed location" ///
18 "workplace in rural areas and located in:construction site" 19 "workplace in rural areas and located in:others" 20 "workplace in urban areas and located in: own dwelling unit" ///
21 "workplace in urban areas and located in:structure attached to own dwelling unit" 22 "workplace in urban areas and located in:open area adjacent to own dwelling unit" ///
23 "workplace in urban areas and located in:detached structure adjacent to own dwelling unit" 24 "workplace in urban areas and located in:own enterprise/unit/office/shop but away from own dwelling" ///
25 "workplace in urban areas and located in:employer’s dwelling unit" 26 "workplace in urban areas and located in:employer’s enterprise/unit/office/shop but outside employer’s dwelling" ///
27 "workplace in urban areas and located in:street with fixed location" 28 "workplace in urban areas and located in:construction site" 29 "workplace in urban areas and located in:others" ///
99 "no fixed workplace"
label values loc_workplc_p LocWorkPlcPrin



label define EnterpriseTypePrin 1 "proprietary :male"  2 "proprietary :female" 3 "partnership: with members from same household" 4 "partnership: with members from different household" ///
5 "Government/local body" 6 "Public Sector Enterprises" 7 "Autonomous Bodies" 8 "Public/Private limited company" 10 "Co-operative societies" ///
11 "trust/other non-profit institutions" 12 "employer’s households(i.e., private households employing maid servant, watchman, cook, etc.)" 19 "others"
label values prin_enterp_cde EnterpriseTypePrin


label define WorkerStregnthPrin 1 "less than 6" 2 "and above but less than 10"  3 "and above but less than 20" 4 "and abobe" 9 "not known"
label values streng_work_p_enterp WorkerStregnthPrin

label define TypeOfContractPrin 1 "no written  job contract" 2 "written job contract: for 1  year or less" 3  "more than 1 year to 3 years" 4 "more than 3 years"
label values p_job_contract_type TypeOfContractPrin

label define PaidLeavePrin 1 "Yes" 2 "No"
label values paid_leave_elig_p PaidLeavePrin


label define SocSecBenPrin 1 "only PF/ pension (i.e., GPF, CPF, PPF, pension,  etc.)" 2 "only gratuity"  ///
3 "only health care &  maternity benefits" 4 "only PF/ pension  and gratuity" 5 "only PF/ pension and health care & maternity benefits" ///
6 "only gratuity and health care & maternity benefits" 7 "PF/ pension, gratuity, health care  & maternity benefits" ///
8 "not  eligible for  any of above social security benefits"  9 "not known"
label values soc_sec_ben_p SocSecBenPrin


*Defining Labels of Subsidiary Activity

label define StatusCodeSubs 11 "worked in h.h. enterprise (self-employed): own account worker" 12 "worked in h.h. enterprise (self-employed):employer"  21 "worked as helper in h.h. enterprise (unpaid family worker)" ///
31 "worked as regular salaried/ wage employee" 41 "worked as casual wage labour: in public works" 51 "worked as casual wage labour:in other types of  work"
label values stat_cde_s StatusCodeSubs

label define LocWorkPlcSubs  10 "workplace in rural areas and located in: own dwelling unit" 11 "workplace in rural areas and located in:structure attached to own dwelling unit" ///
12 "workplace in rural areas and located in:open area adjacent to own dwelling unit" 13 "workplace in rural areas and located in:detached structure adjacent to own dwelling unit13" ///
14 "workplace in rural areas and located in:own enterprise/unit/office/shop but away from own dwelling" 15 "workplace in rural areas and located in:employer’s dwelling unit" ///
16 "workplace in rural areas and located in:employer’s enterprise/unit/office/shop but outside employer’s dwelling" 17 "workplace in rural areas and located in:street with fixed location" ///
18 "workplace in rural areas and located in:construction site" 19 "workplace in rural areas and located in:others" 20 "workplace in urban areas and located in: own dwelling unit" ///
21 "workplace in urban areas and located in:structure attached to own dwelling unit" 22 "workplace in urban areas and located in:open area adjacent to own dwelling unit" ///
23 "workplace in urban areas and located in:detached structure adjacent to own dwelling unit" 24 "workplace in urban areas and located in:own enterprise/unit/office/shop but away from own dwelling" ///
25 "workplace in urban areas and located in:employer’s dwelling unit" 26 "workplace in urban areas and located in:employer’s enterprise/unit/office/shop but outside employer’s dwelling" ///
27 "workplace in urban areas and located in:street with fixed location" 28 "workplace in urban areas and located in:construction site" 29 "workplace in urban areas and located in:others" ///
99 "no fixed workplace"
label values loc_workplc_s LocWorkPlcSubs


label define EnterpriseTypeSubs 1 "proprietary :male"  2 "proprietary :female" 3 "partnership: with members from same household" 4 "partnership: with members from different household" ///
5 "Government/local body" 6 "Public Sector Enterprises" 7 "Autonomous Bodies" 8 "Public/Private limited company" 10 "Co-operative societies" ///
11 "trust/other non-profit institutions" 12 "employer’s households(i.e., private households employing maid servant, watchman, cook, etc.)" 19 "others"
label values enterp_cde_s EnterpriseTypeSubs


label define WorkerStregnthSubs 1 "less than 6" 2 "and above but less than 10"  3 "and above but less than 20" 4 "and abobe" 9 "not known"
label values streng_work_s_enterp WorkerStregnthSubs


label define TypeOfContractSubs 1 "no written  job contract" 2 "written job contract: for 1  year or less" 3  "more than 1 year to 3 years" 4 "more than 3 years"
label values s_job_contract_type TypeOfContractSubs

label define PaidLeaveSubs 1 "Yes" 2 "No"
label values paid_leave_elig_s PaidLeaveSubs


label define SocSecBenSubs 1 "only PF/ pension (i.e., GPF, CPF, PPF, pension,  etc.)" 2 "only gratuity"  ///
3 "only health care &  maternity benefits" 4 "only PF/ pension  and gratuity" 5 "only PF/ pension and health care & maternity benefits" ///
6 "only gratuity and health care & maternity benefits" 7 "PF/ pension, gratuity, health care  & maternity benefits" ///
8 "not  eligible for  any of above social security benefits"  9 "not known"
label values soc_sec_ben_s SocSecBenSubs

*Labelling status code in current weekly particulars

*for day 7 Prin
label define Day7ActStatusPrin 11 "worked in h.h. enterprise (self-employed): own account worker" 12 "worked in h.h. enterprise (self-employed):employer"  ///
21 "worked as helper in h.h. enterprise (unpaid family worker)" ///
31 "worked as regular salaried/ wage employee" 41 "in public works other than MGNREG works" 42 "worked as casual wage labour in MGNREG works" 51 "worked as casual wage labour:in other types of  work" ///
61 "had work in h.h. enterprise but did   not work due to: sickness" 62 "had work in h.h. enterprise but did not work due to: other reasons" ///
71 "had regular salaried/wage employment but did not work due to: sickness" ///
72 "had regular salaried/wage employment but did not work due to:other reasons" ///
81 "sought work" 82 "did not seek but was available for work" ///
91 "attended educational institution" 92 "attended domestic duties only" ///
93 "attended domestic duties and was also engaged in free collection of goods (vegetables, roots, firewood, cattle feed, etc.), sewing, tailoring, weaving, etc. for household use" /// 
94 "rentiers, pensioners , remittance recipients, etc." 95 "not able to work due to disability" ///
97 "others (including begging, prostitution,  etc.)" 98 "did not work due to temporary sickness (for casual workers only)" 99 "children of age 0-4 years"
label values stat_cde_cwa_1 Day7ActStatusPrin

*for day 7 Subs
label define Day7ActStatusSubs 11 "worked in h.h. enterprise (self-employed): own account worker" 12 "worked in h.h. enterprise (self-employed):employer"  ///
21 "worked as helper in h.h. enterprise (unpaid family worker)" ///
31 "worked as regular salaried/ wage employee" 41 "in public works other than MGNREG works" 42 "worked as casual wage labour in MGNREG works" 51 "worked as casual wage labour:in other types of  work" ///
61 "had work in h.h. enterprise but did   not work due to: sickness" 62 "had work in h.h. enterprise but did not work due to: other reasons" ///
71 "had regular salaried/wage employment but did not work due to: sickness" ///
72 "had regular salaried/wage employment but did not work due to:other reasons" ///
81 "sought work" 82 "did not seek but was available for work" ///
91 "attended educational institution" 92 "attended domestic duties only" ///
93 "attended domestic duties and was also engaged in free collection of goods (vegetables, roots, firewood, cattle feed, etc.), sewing, tailoring, weaving, etc. for household use" /// 
94 "rentiers, pensioners , remittance recipients, etc." 95 "not able to work due to disability" ///
97 "others (including begging, prostitution,  etc.)" 98 "did not work due to temporary sickness (for casual workers only)" 99 "children of age 0-4 years"
label values stat_cde_cwa_2 Day7ActStatusSubs


*for day 6 Prin
label define Day6ActStatusPrin 11 "worked in h.h. enterprise (self-employed): own account worker" 12 "worked in h.h. enterprise (self-employed):employer"  ///
21 "worked as helper in h.h. enterprise (unpaid family worker)" ///
31 "worked as regular salaried/ wage employee" 41 "in public works other than MGNREG works" 42 "worked as casual wage labour in MGNREG works" 51 "worked as casual wage labour:in other types of  work" ///
61 "had work in h.h. enterprise but did   not work due to: sickness" 62 "had work in h.h. enterprise but did not work due to: other reasons" ///
71 "had regular salaried/wage employment but did not work due to: sickness" ///
72 "had regular salaried/wage employment but did not work due to:other reasons" ///
81 "sought work" 82 "did not seek but was available for work" ///
91 "attended educational institution" 92 "attended domestic duties only" ///
93 "attended domestic duties and was also engaged in free collection of goods (vegetables, roots, firewood, cattle feed, etc.), sewing, tailoring, weaving, etc. for household use" /// 
94 "rentiers, pensioners , remittance recipients, etc." 95 "not able to work due to disability" ///
97 "others (including begging, prostitution,  etc.)" 98 "did not work due to temporary sickness (for casual workers only)" 99 "children of age 0-4 years"
label values stat_cde_cwa_1_6thday Day6ActStatusPrin


*for day 6 Subs
label define Day6ActStatusSubs 11 "worked in h.h. enterprise (self-employed): own account worker" 12 "worked in h.h. enterprise (self-employed):employer"  ///
21 "worked as helper in h.h. enterprise (unpaid family worker)" ///
31 "worked as regular salaried/ wage employee" 41 "in public works other than MGNREG works" 42 "worked as casual wage labour in MGNREG works" 51 "worked as casual wage labour:in other types of  work" ///
61 "had work in h.h. enterprise but did   not work due to: sickness" 62 "had work in h.h. enterprise but did not work due to: other reasons" ///
71 "had regular salaried/wage employment but did not work due to: sickness" ///
72 "had regular salaried/wage employment but did not work due to:other reasons" ///
81 "sought work" 82 "did not seek but was available for work" ///
91 "attended educational institution" 92 "attended domestic duties only" ///
93 "attended domestic duties and was also engaged in free collection of goods (vegetables, roots, firewood, cattle feed, etc.), sewing, tailoring, weaving, etc. for household use" /// 
94 "rentiers, pensioners , remittance recipients, etc." 95 "not able to work due to disability" ///
97 "others (including begging, prostitution,  etc.)" 98 "did not work due to temporary sickness (for casual workers only)" 99 "children of age 0-4 years"
label values stat_cde_cwa_2_6thday Day6ActStatusSubs


*for day 5 Prin
label define Day5ActStatusPrin 11 "worked in h.h. enterprise (self-employed): own account worker" 12 "worked in h.h. enterprise (self-employed):employer"  ///
21 "worked as helper in h.h. enterprise (unpaid family worker)" ///
31 "worked as regular salaried/ wage employee" 41 "in public works other than MGNREG works" 42 "worked as casual wage labour in MGNREG works" 51 "worked as casual wage labour:in other types of  work" ///
61 "had work in h.h. enterprise but did   not work due to: sickness" 62 "had work in h.h. enterprise but did not work due to: other reasons" ///
71 "had regular salaried/wage employment but did not work due to: sickness" ///
72 "had regular salaried/wage employment but did not work due to:other reasons" ///
81 "sought work" 82 "did not seek but was available for work" ///
91 "attended educational institution" 92 "attended domestic duties only" ///
93 "attended domestic duties and was also engaged in free collection of goods (vegetables, roots, firewood, cattle feed, etc.), sewing, tailoring, weaving, etc. for household use" /// 
94 "rentiers, pensioners , remittance recipients, etc." 95 "not able to work due to disability" ///
97 "others (including begging, prostitution,  etc.)" 98 "did not work due to temporary sickness (for casual workers only)" 99 "children of age 0-4 years"
label values stat_cde_cwa_1_5thday Day5ActStatusPrin



*for day 5 Subs
label define Day5ActStatusSubs 11 "worked in h.h. enterprise (self-employed): own account worker" 12 "worked in h.h. enterprise (self-employed):employer"  ///
21 "worked as helper in h.h. enterprise (unpaid family worker)" ///
31 "worked as regular salaried/ wage employee" 41 "in public works other than MGNREG works" 42 "worked as casual wage labour in MGNREG works" 51 "worked as casual wage labour:in other types of  work" ///
61 "had work in h.h. enterprise but did   not work due to: sickness" 62 "had work in h.h. enterprise but did not work due to: other reasons" ///
71 "had regular salaried/wage employment but did not work due to: sickness" ///
72 "had regular salaried/wage employment but did not work due to:other reasons" ///
81 "sought work" 82 "did not seek but was available for work" ///
91 "attended educational institution" 92 "attended domestic duties only" ///
93 "attended domestic duties and was also engaged in free collection of goods (vegetables, roots, firewood, cattle feed, etc.), sewing, tailoring, weaving, etc. for household use" /// 
94 "rentiers, pensioners , remittance recipients, etc." 95 "not able to work due to disability" ///
97 "others (including begging, prostitution,  etc.)" 98 "did not work due to temporary sickness (for casual workers only)" 99 "children of age 0-4 years"
label values stat_cde_cwa_2_5thday Day5ActStatusSubs

*for day 4 Prin
label define Day4ActStatusPrin 11 "worked in h.h. enterprise (self-employed): own account worker" 12 "worked in h.h. enterprise (self-employed):employer"  ///
21 "worked as helper in h.h. enterprise (unpaid family worker)" ///
31 "worked as regular salaried/ wage employee" 41 "in public works other than MGNREG works" 42 "worked as casual wage labour in MGNREG works" 51 "worked as casual wage labour:in other types of  work" ///
61 "had work in h.h. enterprise but did   not work due to: sickness" 62 "had work in h.h. enterprise but did not work due to: other reasons" ///
71 "had regular salaried/wage employment but did not work due to: sickness" ///
72 "had regular salaried/wage employment but did not work due to:other reasons" ///
81 "sought work" 82 "did not seek but was available for work" ///
91 "attended educational institution" 92 "attended domestic duties only" ///
93 "attended domestic duties and was also engaged in free collection of goods (vegetables, roots, firewood, cattle feed, etc.), sewing, tailoring, weaving, etc. for household use" /// 
94 "rentiers, pensioners , remittance recipients, etc." 95 "not able to work due to disability" ///
97 "others (including begging, prostitution,  etc.)" 98 "did not work due to temporary sickness (for casual workers only)" 99 "children of age 0-4 years"
label values stat_cde_cwa_1_4thday Day4ActStatusPrin


*for day 4 Subs
label define Day4ActStatusSubs 11 "worked in h.h. enterprise (self-employed): own account worker" 12 "worked in h.h. enterprise (self-employed):employer"  ///
21 "worked as helper in h.h. enterprise (unpaid family worker)" ///
31 "worked as regular salaried/ wage employee" 41 "in public works other than MGNREG works" 42 "worked as casual wage labour in MGNREG works" 51 "worked as casual wage labour:in other types of  work" ///
61 "had work in h.h. enterprise but did   not work due to: sickness" 62 "had work in h.h. enterprise but did not work due to: other reasons" ///
71 "had regular salaried/wage employment but did not work due to: sickness" ///
72 "had regular salaried/wage employment but did not work due to:other reasons" ///
81 "sought work" 82 "did not seek but was available for work" ///
91 "attended educational institution" 92 "attended domestic duties only" ///
93 "attended domestic duties and was also engaged in free collection of goods (vegetables, roots, firewood, cattle feed, etc.), sewing, tailoring, weaving, etc. for household use" /// 
94 "rentiers, pensioners , remittance recipients, etc." 95 "not able to work due to disability" ///
97 "others (including begging, prostitution,  etc.)" 98 "did not work due to temporary sickness (for casual workers only)" 99 "children of age 0-4 years"
label values stat_cde_cwa_2_4thday Day4ActStatusSubs


*for day 3 Prin
label define Day3ActStatusPrin 11 "worked in h.h. enterprise (self-employed): own account worker" 12 "worked in h.h. enterprise (self-employed):employer"  ///
21 "worked as helper in h.h. enterprise (unpaid family worker)" ///
31 "worked as regular salaried/ wage employee" 41 "in public works other than MGNREG works" 42 "worked as casual wage labour in MGNREG works" 51 "worked as casual wage labour:in other types of  work" ///
61 "had work in h.h. enterprise but did   not work due to: sickness" 62 "had work in h.h. enterprise but did not work due to: other reasons" ///
71 "had regular salaried/wage employment but did not work due to: sickness" ///
72 "had regular salaried/wage employment but did not work due to:other reasons" ///
81 "sought work" 82 "did not seek but was available for work" ///
91 "attended educational institution" 92 "attended domestic duties only" ///
93 "attended domestic duties and was also engaged in free collection of goods (vegetables, roots, firewood, cattle feed, etc.), sewing, tailoring, weaving, etc. for household use" /// 
94 "rentiers, pensioners , remittance recipients, etc." 95 "not able to work due to disability" ///
97 "others (including begging, prostitution,  etc.)" 98 "did not work due to temporary sickness (for casual workers only)" 99 "children of age 0-4 years"
label values stat_cde_cwa_1_3rdday Day3ActStatusPrin


*for day 3 Subs
label define Day3ActStatusSubs 11 "worked in h.h. enterprise (self-employed): own account worker" 12 "worked in h.h. enterprise (self-employed):employer"  ///
21 "worked as helper in h.h. enterprise (unpaid family worker)" ///
31 "worked as regular salaried/ wage employee" 41 "in public works other than MGNREG works" 42 "worked as casual wage labour in MGNREG works" 51 "worked as casual wage labour:in other types of  work" ///
61 "had work in h.h. enterprise but did   not work due to: sickness" 62 "had work in h.h. enterprise but did not work due to: other reasons" ///
71 "had regular salaried/wage employment but did not work due to: sickness" ///
72 "had regular salaried/wage employment but did not work due to:other reasons" ///
81 "sought work" 82 "did not seek but was available for work" ///
91 "attended educational institution" 92 "attended domestic duties only" ///
93 "attended domestic duties and was also engaged in free collection of goods (vegetables, roots, firewood, cattle feed, etc.), sewing, tailoring, weaving, etc. for household use" /// 
94 "rentiers, pensioners , remittance recipients, etc." 95 "not able to work due to disability" ///
97 "others (including begging, prostitution,  etc.)" 98 "did not work due to temporary sickness (for casual workers only)" 99 "children of age 0-4 years"
label values stat_cde_cwa_2_3rdday Day3ActStatusSubs


*for day 2 Prin
label define Day2ActStatusPrin 11 "worked in h.h. enterprise (self-employed): own account worker" 12 "worked in h.h. enterprise (self-employed):employer"  ///
21 "worked as helper in h.h. enterprise (unpaid family worker)" ///
31 "worked as regular salaried/ wage employee" 41 "in public works other than MGNREG works" 42 "worked as casual wage labour in MGNREG works" 51 "worked as casual wage labour:in other types of  work" ///
61 "had work in h.h. enterprise but did   not work due to: sickness" 62 "had work in h.h. enterprise but did not work due to: other reasons" ///
71 "had regular salaried/wage employment but did not work due to: sickness" ///
72 "had regular salaried/wage employment but did not work due to:other reasons" ///
81 "sought work" 82 "did not seek but was available for work" ///
91 "attended educational institution" 92 "attended domestic duties only" ///
93 "attended domestic duties and was also engaged in free collection of goods (vegetables, roots, firewood, cattle feed, etc.), sewing, tailoring, weaving, etc. for household use" /// 
94 "rentiers, pensioners , remittance recipients, etc." 95 "not able to work due to disability" ///
97 "others (including begging, prostitution,  etc.)" 98 "did not work due to temporary sickness (for casual workers only)" 99 "children of age 0-4 years"
label values stat_cde_cwa_1_2ndday Day2ActStatusPrin


*for day 2 Subs
label define Day2ActStatusSubs 11 "worked in h.h. enterprise (self-employed): own account worker" 12 "worked in h.h. enterprise (self-employed):employer"  ///
21 "worked as helper in h.h. enterprise (unpaid family worker)" ///
31 "worked as regular salaried/ wage employee" 41 "in public works other than MGNREG works" 42 "worked as casual wage labour in MGNREG works" 51 "worked as casual wage labour:in other types of  work" ///
61 "had work in h.h. enterprise but did   not work due to: sickness" 62 "had work in h.h. enterprise but did not work due to: other reasons" ///
71 "had regular salaried/wage employment but did not work due to: sickness" ///
72 "had regular salaried/wage employment but did not work due to:other reasons" ///
81 "sought work" 82 "did not seek but was available for work" ///
91 "attended educational institution" 92 "attended domestic duties only" ///
93 "attended domestic duties and was also engaged in free collection of goods (vegetables, roots, firewood, cattle feed, etc.), sewing, tailoring, weaving, etc. for household use" /// 
94 "rentiers, pensioners , remittance recipients, etc." 95 "not able to work due to disability" ///
97 "others (including begging, prostitution,  etc.)" 98 "did not work due to temporary sickness (for casual workers only)" 99 "children of age 0-4 years"
label values stat_cde_cwa_2_2ndday Day2ActStatusSubs



*for day 1 Prin
label define Day1ActStatusPrin 11 "worked in h.h. enterprise (self-employed): own account worker" 12 "worked in h.h. enterprise (self-employed):employer"  ///
21 "worked as helper in h.h. enterprise (unpaid family worker)" ///
31 "worked as regular salaried/ wage employee" 41 "in public works other than MGNREG works" 42 "worked as casual wage labour in MGNREG works" 51 "worked as casual wage labour:in other types of  work" ///
61 "had work in h.h. enterprise but did   not work due to: sickness" 62 "had work in h.h. enterprise but did not work due to: other reasons" ///
71 "had regular salaried/wage employment but did not work due to: sickness" ///
72 "had regular salaried/wage employment but did not work due to:other reasons" ///
81 "sought work" 82 "did not seek but was available for work" ///
91 "attended educational institution" 92 "attended domestic duties only" ///
93 "attended domestic duties and was also engaged in free collection of goods (vegetables, roots, firewood, cattle feed, etc.), sewing, tailoring, weaving, etc. for household use" /// 
94 "rentiers, pensioners , remittance recipients, etc." 95 "not able to work due to disability" ///
97 "others (including begging, prostitution,  etc.)" 98 "did not work due to temporary sickness (for casual workers only)" 99 "children of age 0-4 years"
label values stat_cde_cwa_1_1stday Day1ActStatusPrin



*for day 1 Subs
label define Day1ActStatusSubs 11 "worked in h.h. enterprise (self-employed): own account worker" 12 "worked in h.h. enterprise (self-employed):employer"  ///
21 "worked as helper in h.h. enterprise (unpaid family worker)" ///
31 "worked as regular salaried/ wage employee" 41 "in public works other than MGNREG works" 42 "worked as casual wage labour in MGNREG works" 51 "worked as casual wage labour:in other types of  work" ///
61 "had work in h.h. enterprise but did   not work due to: sickness" 62 "had work in h.h. enterprise but did not work due to: other reasons" ///
71 "had regular salaried/wage employment but did not work due to: sickness" ///
72 "had regular salaried/wage employment but did not work due to:other reasons" ///
81 "sought work" 82 "did not seek but was available for work" ///
91 "attended educational institution" 92 "attended domestic duties only" ///
93 "attended domestic duties and was also engaged in free collection of goods (vegetables, roots, firewood, cattle feed, etc.), sewing, tailoring, weaving, etc. for household use" /// 
94 "rentiers, pensioners , remittance recipients, etc." 95 "not able to work due to disability" ///
97 "others (including begging, prostitution,  etc.)" 98 "did not work due to temporary sickness (for casual workers only)" 99 "children of age 0-4 years"
label values stat_cde_cwa_2_1stday Day1ActStatusSubs



*label for CWS
label define CurrentWeekStatus 11 "worked in h.h. enterprise (self-employed): own account worker" 12 "worked in h.h. enterprise (self-employed):employer"  ///
21 "worked as helper in h.h. enterprise (unpaid family worker)" ///
31 "worked as regular salaried/ wage employee" 41 "in public works other than MGNREG works" 42 "worked as casual wage labour in MGNREG works" 51 "worked as casual wage labour:in other types of  work" ///
61 "had work in h.h. enterprise but did   not work due to: sickness" 62 "had work in h.h. enterprise but did not work due to: other reasons" ///
71 "had regular salaried/wage employment but did not work due to: sickness" ///
72 "had regular salaried/wage employment but did not work due to:other reasons" ///
81 "sought work" 82 "did not seek but was available for work" ///
91 "attended educational institution" 92 "attended domestic duties only" ///
93 "attended domestic duties and was also engaged in free collection of goods (vegetables, roots, firewood, cattle feed, etc.), sewing, tailoring, weaving, etc. for household use" /// 
94 "rentiers, pensioners , remittance recipients, etc." 95 "not able to work due to disability" ///
97 "others (including begging, prostitution,  etc.)" 98 "did not work due to temporary sickness (for casual workers only)" 99 "children of age 0-4 years"
label values CWS CurrentWeekStatus



















save "E:\PLFS\PER FV.dta", replace
*hashtag for the pend version
save "F:\Confidential\PER FV - copy.dta", replace













*Loading the data source for trimmed LF
use "E:\PLFS\PER FV LF trim.dta"
*for Pendrive
use "F:\Ewan\Confidential\PER FV LF trim.dta" 


*to be applied on test data set "LF Filtered"

*to be used in data set "LF filtered"
*weekly wage creation attempt on 21/01/2020
gen week_wage = wage_earn_act_2_1stday+ wage_earn_act_1_1stday+ wage_earn_act_2_2ndday+ ///
wage_earn_act_1_2ndday+ wage_earn_act_2_3rdday+ wage_earn_act_1_3rdday+ wage_earn_act_2_4thday+ ///
wage_earn_act_1_4thday+ wage_earn_act_2_5thday+ wage_earn_act_1_5thday+ wage_earn_act_2_6thday+ /// 
wage_earn_act_1_6thday+ wage_earn_act_2_7thday+ wage_earn_act_1_7thday

gen log_week_wage = ln( week_wage)


*attempt on 04/03/2020
*attempt to generate per week earnings from earn_reg_act
gen per_week_earn_reg_act= earn_reg_act/30*7

*attempt to generate per week gross earnings from self emp during last 30 days from var gross_earn_self_emp
gen per_week_gross_earn_self_emp= gross_earn_self_emp/30*7

*genrating aggregate wage from all 3 sources
gen agg_per_week_wage= week_wage+ per_week_earn_reg_act+ per_week_gross_earn_self_emp

*log of agg_per_week_wage
gen log_agg_per_week_wage= ln(agg_per_week_wage)

*after applying log we've 126,443 people with log of agg per week wage 

* removing negative values in aggregate per week wage
keep if agg_per_week_wage>=0

*Operations on 06/03/2020

*generating age based filter for LF
gen lf_age = 1 if inrange(age,15,64)
keep if lf_age == 1


*generating "Curent edu status" based filter for LF

*recoding atten edu inst status
*1= never attended 2= ever, currently no 4= currently yes 3=. so get rid of 4
recode atten_ed_inst (1/5=1) (11/15=2) (21/43=4) (else=3), gen (atten_ed_inst_recoded) 
keep if inrange( atten_ed_inst_recoded, 1, 3) 


*current total in LF filtered 254,789 


*operations done on 11/03/2020 (Later the previous criteria CWS was replaced with stst code Prin)

*filter based on stat code prin, 
* removing people under category 81-99
keep if inrange(stat_cde_P, 11, 51)
*n = 139,753

*dropping outlier=163,333
sort agg_per_week_wage
drop in 139753
*n = 139,752



*recoding prin stat activity  industry code
recode Indust_cde_p (1000/3999 = 1 " Agriculture, forestry and fishing") (5000/9999 = 2 "Mining and quarrying")(10000/34999 = 3 "Manufacturing") (35000/35999 = 4 "Electricity, gas, steam and air conditioning supply")(36000/39999 = 5 "Water supply; sewerage, waste management and remediation activities")(41000/43999 = 6 "Construction") (45000/47999 = 7 "Wholesale and retail trade; repair of motor vehicles and motorcycles")(49000/53999 = 8 "Transportation and storage") (55000/56999 = 9 "Accommodation and Food service activities")(58000/63999 = 10 "Information and communication") (64000/66999 = 11 "Financial and insurance activities")(68000/68999 = 12 "Real estate activities") (69000/75999 = 13 "Professional, scientific and technical activities")(77000/82999 = 14 "Administrative and support service activities") (84000/84999 = 15 "Public administration and defence; compulsory social security")(85000/85999 = 16 "Education") (86000/88999 = 17 "Human health and social work activities") (90000/93999 = 18 "Arts, entertainment and recreation")(94000/96999 = 19 "Other service activities") (97000/98999 = 20 "Activities of households as employers; undifferentiated goods and services producing activities of households for own use")(99000/99999 = 21 "Activities of extraterritorial organizations and bodies")(else = 0 "everything else"), gen (indus_cde_P_NIC)

*n = 139,752





*operations done on 13/03/2020

*creating gini for aggregate weekly wage
adgini agg_per_week_wage
*creating quantile specific gini for aggregate weekly wage
bysort q_agg: adgini agg_per_week_wage
*creating quantile specific gini forlog of aggregate weekly wage
bysort q_agg: adgini log_agg_per_week_wage



*TO BE DONE ON HH MERGE
*operations done on 18/03/2020
*stringing Sector and HH type to create HH Type recoded
tostring Sector, gen(stringSec)
tostring HH_type, gen(stringHHtype)
gen HH_type_string= stringSec+ stringHHtype
destring HH_type_string, gen(HH_type_recoded)
label define HHType 11 "Rural-self-employed in: agriculture" 12"Rural-self-employed in: non-agriculture" 13"Rural-regular wage/salary earning" 14"Rural-casual labour in: agriculture" 15"Rural-casual labour in: non-agriculture" 19"Rural-casual labour in: others" ///
21"Urban-self-employed" 22"Urban-regular wage/salary earning" 23"Urban-casual labour" 29"Urban-others"
label values HH_type_recoded HHType



*operations on 23/03/2020

*creating string variables of isid to create unique id to generate HH mean agg week wages
tostring Ste_Ut Dst_cde NSS_reg strtm sb_strtm sub_smpl FOD_sb_reg FSU Smple_sg_sb_no Scnd_stg_strtm smpl_HH_no, gen (strste strdst strnss strstr strsb strsub strfod strfsu strsmple strscnd strsmpl)
gen HH_id = strste+ strdst+ strnss+ strstr+ strsb+ strsub+ strfod+ strfsu+ strsmple+ strscnd+ strsmpl

*DONT RUN already created.
*genrating sum and mean HH agg weekly wage
*seperate memory data sets would be created for below commands
egen HH_agg_week_wage= sum ( agg_per_week_wage ), by ( HH_id )
egen HH_mean_agg_week_wage= mean ( agg_per_week_wage ), by ( HH_id )




*DONT RUN UNLESS VERIFIED*
*dropping zero wage unpaid family workers under CWS
drop if CWS==21
*n=121,595 after dropping outlier as well



*NEED TO BE VERIFIED*****DONT RUN
*operations on 24/03/2020
*operations done on HH PER FV Merge to create labour force status
recode CWS (11/72 = 1 "employed") (80/89 = 2 "unemployed") (90/100 = 3 "not in LF") (else=0), gen (CWS_recoded)

*replacimng missing values in stat cde s as 99 so that all values in str_PS has four letters
replace stat_cde_s=99 if stat_cde_s==.

*recoding usual p status
recode stat_cde_P (11/72 = 1 "employed") (80/89 = 2 "unemployed") (90/100 = 3 "not in LF") (else=0), gen (stat_cde_P_emp)

*recoding usual s status
recode stat_cde_s (11/72 = 1 "employed") (80/89 = 2 "unemployed") (else=0), gen (stat_cde_s_recoded)

*stringing P and S status
tostring stat_cde_P stat_cde_s , gen (strP strS)
gen str_PS= strP+ strS

*destringing the above to recode and calculate unemp rate(ps+ss)
destring str_PS, gen (stat_cde_PS)

*recoding ps+ss status
recode stat_cde_PS (1100/5200 = 1 "employed") (8000/8200 = 2 "unemployed") (9000/9800 = 3 "not in LF") (else = 0), gen (stat_cde_PS_recoded)




*operations done on 28/03/2020

*removing zero wage observations from agg week wages
drop if agg_per_week_wage==0
*19,762 observations would be dropped
*n=119,990

*creating gini and quantile split
*egen for creating quantiles 
egen q_agg= cut (agg_per_week_wage) , group (10) label 
ta q_agg

*creating egen quantile for HH agg weekly wage
egen q_HH_agg = cut(agg_HH_per_week_wage), group(10) label 
ta q_HH_agg

*creating quantile specific gini
bysort q_agg: adgini agg_per_week_wage
*creating quantile specific gini for HH agg weekly wage
bysort q_HH_agg: adgini agg_HH_per_week_wage




*creating log of agg HH weekly wage 
gen log_agg_HH_per_week_wage = ln(agg_HH_per_week_wage)



*DONT RUN
*alternate command for creating quantiles
xtile qx_agg= agg_per_week_wage, nq (9)
ta qx_agg
*alternate command for creating quantiles of HH agg weekly wage
xtile qHH_agg= agg_HH_per_week_wage, nq (9)




*recoding Factor variables for QR
*operations done on 30/03/2020
*Editing and adding value 101 "Farm" for enterp cde p for indus cde p ranging from 1111 - 1399 and 1500 (since they belong to farming sector and doesnt have an enterprise code in the survey)
replace prin_enterp_cde=101 if Indust_cde_p<=1399
replace prin_enterp_cde=101 if Indust_cde_p==1500
*replacing the remaining 74 MVs with category "others=19"
replace prin_enterp_cde=19 if prin_enterp_cde==.
label define EnterpriseTypePrin 101 "Farm", add

*operations done on 01/04/2020
*recoding and merging job contract type with stat_cde_P
*recoding P_job_contract_type
recode p_job_contract_type(2=2 "written job contract: for 1  year or less")(3=3  "more than 1 year to 3 years")(4=4 "more than 3 years") (else=0), gen (p_job_contract_type_recoded)
*stringing and merging p_job_contract_type_recoded with stat_cde_P
egen str_stat_job_contract= concat (stat_cde_P p_job_contract_type_recoded)
*De-stringing 
destring str_stat_job_contract, gen (stat_p_job_contract)
*labelling above destringed stat_p_job_contract
label define StatPrinJobContractType 110 "worked in h.h. enterprise (self-employed): own account worker" 120 "worked in h.h. enterprise (self-employed):employer" ///
210 "worked as helper in h.h. enterprise (unpaid family worker)" 310 "worked as regular salaried/ wage employee" 410 "worked as casual wage labour: in public works" ///
510 "worked as casual wage labour:in other types of  work" 312 "worked as regular salaried/ wage employee with written job contract: for 1  year or less" 313 "worked as regular salaried/ wage employee with written job contract:more than 1 year to 3 years" /// 
314 "worked as regular salaried/ wage employee with written job contract:more than 3 years" 412 "worked as casual wage labour: in public works with written job contract: for 1  year or less" ///
413 "worked as casual wage labour: in public works with written job contract:more than 1 year to 3 years" 414 "worked as casual wage labour: in public works with written job contract:more than 3 years" ///
512 "worked as casual wage labour:in other types of work with written job contract: for 1  year or less" 513 "worked as casual wage labour:in other types of  work with written job contract:more than 1 year to 3 years" ///
514 "worked as casual wage labour:in other types of work with written job contract:more than 3 years"
label values stat_p_job_contract StatPrinJobContractType


*replacing missing values in voc_tech_ed_stat with value 6
replace voc_tech_ed_stat=6 if voc_tech_ed_stat==.
*replacing missing values in train_type with Zero
replace train_type=0 if train_type==.
*creating string and merging voc_tech_ed_stat and train_type
egen str_voc_traintype= concat ( voc_tech_ed_stat train_type )
*destringing and recoding voc_traintype
destring str_voc_traintype, gen (voc_traintype_recoded) 
*labeling voc_traintype_recoded
label define VocTrainRecoded 11"yes: received formal vocational/technical training: on the job" 12"yes: received formal vocational/technical training: other than on the job: part time" 13"yes: received formal vocational/technical training: other than on the job: full time" ///
20"yes: received vocational/technical training other than formal vocational/technical training: hereditary" 30"yes: received vocational/technical training other than formal vocational/technical training:self-leanring" ///
40"yes: received vocational/technical training other than formal vocational/technical training:learning on the job" 50"yes: received vocational/technical training other than formal vocational/technical training:others" ///
60"did not receive any vocational/technical training"
label values voc_traintype_recoded VocTrainRecoded 


*creating age squared 
gen age_sqr= age* age



*QR for .10 .25. .50 .75 .90
sqreg log_agg_per_week_wage age ib(1).sex age_sqr ib(1).gen_ed_lev ib(1).tech_ed_lev ib(60).voc_traintype_recoded ib(210).stat_p_job_contract /// 
ib(1).indus_cde__p_recoded ib(101).prin_enterp_cde ib(1).Sector ib(11).HH_type_recoded ib(1).relgn ib(9).sc_grp, quantile (.10 .25 .50 .75 .90) allbase 

qreg log_agg_per_week_wage age ib(1).sex age_sqr ib(1).gen_ed_lev ib(1).tech_ed_lev ib(60).voc_traintype_recoded ib(210).stat_p_job_contract /// 
ib(1).indus_cde__p_recoded ib(101).prin_enterp_cde ib(1).Sector ib(11).HH_type_recoded ib(1).relgn ib(9).sc_grp, quantile (.90) allbase 

*grqreg, cons ci ols olsci

*OLS 
reg log_agg_per_week_wage age ib(1).sex age_sqr ib(1).gen_ed_lev ib(1).tech_ed_lev ib(60).voc_traintype_recoded ib(210).stat_p_job_contract /// 
ib(1).indus_cde_P_NIC ib(101).prin_enterp_cde ib(1).Sector ib(11).HH_type_recoded ib(1).relgn ib(9).sc_grp, allbase



            

*operations done on 02/04/2020
*operations pertaining to M M Decomposition
*creation of pid required by MM
egen pid = concat (HH_id per_sn)

* we are decomposing effects of only gen ed lev, tech ed lev, voc train, indus cde, sex, sector

*MM command for gen ed lev
mmsel log_agg_per_week_wage age age_sqr gen_ed_lev, group (female) filename (E:\PLFS\HH PER FV Merge LF Trim.dta)


*mmsel log_agg_per_week_wage age age_sqr tech_ed_lev, group (1) filename (MM decomp logs) pooled 
mmsel log_agg_per_week_wage age age_sqr voc_traintype_recoded, group (60) filename (MM decomp logs) pooled 
mmsel log_agg_per_week_wage age age_sqr stat_p_job_contract, group (210) filename (MM decomp logs) pooled
mmsel log_agg_per_week_wage age age_sqr indus_cde__p_recoded, group (1) filename (MM decomp logs) pooled 
mmsel log_agg_per_week_wage age age_sqr Sector, group (1) filename (MM decomp logs) pooled 
mmsel log_agg_per_week_wage age age_sqr sex, group (1) filename (MM decomp logs) pooled
		
			
			
			
*oaxaca commands
oaxaca log_agg_per_week_wage age age_sqr gen_ed_lev, by(female)
**oaxaca commands with female grp 1 as ref
oaxaca log_agg_per_week_wage age age_sqr gen_ed_lev tech_ed_lev voc_traintype_recoded stat_p_job_contract /// 
indus_cde__p_recoded Sector relgn sc_grp marital_stat, by(female) relax

**oaxaca commands with female grp 2 as ref
oaxaca log_agg_per_week_wage age age_sqr gen_ed_lev tech_ed_lev voc_traintype_recoded stat_p_job_contract /// 
indus_cde__p_recoded Sector relgn sc_grp marital_stat, by(female) relax threefold (reverse)

			
*operations for Benn Janns
decompose log_agg_per_week_wage age sex age_sqr gen_ed_lev tech_ed_lev voc_traintype_recoded stat_p_job_contract /// 
indus_cde__p_recoded Sector relgn sc_grp, by(female) pooled relax detail estimates			
			
			
			
			
*DONT RUN
*operations on 03/04/2020
*operations of qreg with varlist wtih fv indicator
global ylist log_agg_per_week_wage
global xlist age ib(1).sex age_sqr ib(1).gen_ed_lev ib(1).tech_ed_lev ib(60).voc_traintype_recoded ib(210).stat_p_job_contract /// 
ib(1).indus_cde__p_recoded ib(101).prin_enterp_cde ib(1).Sector ib(11).HH_type_recoded ib(1).relgn ib(9).sc_grp			

describe $ylist $xlist	
	
qreg $ylist $xlist, quantile (.90) allbase
grqreg, cons ci ols olsci 			
			
*operations without fv indicators
global ylist log_agg_per_week_wage
global xlist age sex age_sqr gen_ed_lev tech_ed_lev voc_traintype_recoded stat_p_job_contract /// 
indus_cde__p_recoded prin_enterp_cde Sector HH_type_recoded relgn sc_grp			

describe $ylist $xlist	
	
quietly qreg $ylist $xlist, quantile (.90) allbase
grqreg, cons ci ols olsci 
			
qreg $ylist $xlist, quantile (.90) allbase	
	
			
qreg log_agg_per_week_wage age ib(1).sex age_sqr ib(1).gen_ed_lev ib(1).tech_ed_lev ib(60).voc_traintype_recoded ib(210).stat_p_job_contract /// 
ib(1).indus_cde__p_recoded ib(101).prin_enterp_cde ib(1).Sector ib(11).HH_type_recoded ib(1).relgn ib(9).sc_grp, quantile (.90) allbase 

*grqreg, cons ci ols olsci			
			

*operations for qreg
xi qreg log_agg_per_week_wage age age_sqr form_ed_lev i.gen_ed_lev_recoded i.voc_tech_ed_stat_recoded i.sta_cde_P_recoded i.indus_cde_P_recoded HH_MCE i.relgn_recoded i.sex_recoded i.sc_grp_recoded, quantile (.10) allbase 
grqreg, cons ci ols olsci				
			
estat hettest, iid			
			
			
			
			
					
*Heckman two step sample correction
heckman agg_per_week_wage age ib(none).CWS ib(1).indus_cde_recoded ib(1).gen_ed_lev, twostep select(agg_per_week_wage = age ib(1).CWS_recoded ib(last).atten_ed_inst_recoded) rhosigma




*operations on 06/04/2020
*second stage recoding

*recoding gen ed lev
recode gen_ed_lev (1/4=1 "Not Literate") (5/7=2 "Primary") (8/10=3 "Secondary") (11/13=4 "Tertiary") (else=0 "Everything else"), gen (gen_ed_lev_recoded)

*recoding stat_cde_P
recode stat_cde_P (11/21=1 "Self Employed") (31=2 "Regular Salaried/wage Employee") (41/51=3 "Casual Wage Labour") (else=0 "Everything else"), gen (sta_cde_P_recoded)

*recoding indus_cde_P_NIC
recode indus_cde_P_NIC (1/2=1 "Primary") (3/6=2 "Secondary") (7/21=3 "Tertiary") (else=0 "Everything else"), gen (indus_cde_P_recoded)

*recoding relgn
recode relgn (1=1 "Hinduism") (2=2 "Islam") (3/9=3 "Others"), gen (relgn_recoded)

*recoding Sex
recode sex (1=1 "Male") (2/3=2 "Female"), gen (sex_recoded) 

*recoding voc_tech_ed_stat
recode voc_tech_ed_stat (1=3 "Formal Voc/Tech Education") (2/5=2 "Informal Voc/Tech Education") (6=1 "No Voc/Tech Education") (else=0 "Everything else"), gen (voc_tech_ed_stat_recoded)

*recoding sc_grp
recode sc_grp (9=1 "Others") (1=2 "Scheduled Tribe") (2=3 "Scheduled Caste") (3=4 "Other Backward Class"), gen (sc_grp_recoded)


*operations for qreg
qreg log_agg_per_week_wage age age_sqr form_ed_lev i.gen_ed_lev_recoded i.voc_tech_ed_stat_recoded i.sta_cde_P_recoded i.indus_cde_P_recoded i.Sector i.relgn_recoded i.sex_recoded i.sc_grp_recoded, quantile (.90) allbase 

*operations for OLS reg
reg log_agg_per_week_wage age age_sqr form_ed_lev i.gen_ed_lev_recoded i.voc_tech_ed_stat_recoded i.sta_cde_P_recoded i.indus_cde_P_recoded i.Sector i.relgn_recoded i.sex_recoded i.sc_grp_recoded, allbase 




*operations for qreg
qreg agg_per_week_wage age age_sqr form_ed_lev i.gen_ed_lev_recoded i.voc_tech_ed_stat_recoded i.sta_cde_P_recoded i.indus_cde_P_recoded i.Sector i.relgn_recoded i.sex_recoded i.sc_grp_recoded, quantile (.10) allbase 

*operations for OLS reg
reg agg_per_week_wage age age_sqr form_ed_lev i.gen_ed_lev_recoded i.voc_tech_ed_stat_recoded i.sta_cde_P_recoded i.indus_cde_P_recoded i.Sector i.relgn_recoded i.sex_recoded i.sc_grp_recoded, allbase robust







*operations on 16/04/2020
*creating gini and quantile split
*egen for creating quantiles 
egen q_log_agg= cut (log_agg_per_week_wage) , group (10) label 
ta q_log_agg

*gini creation via conindex
conindex agg_per_week_wage, comp(q_log_agg)robust truezero graph
*gini creation via conindex
conindex agg_per_week_wage, comp(q_agg)robust truezero graph

*gaussian akdensity plot for agg week wages
akdensity agg_per_week_wage, kernel (gaussian) bw(10000) normal scale (1)








*creating egen quantile for HH agg weekly wage
egen q_HH_agg = cut(agg_HH_per_week_wage), group(10) label 
ta q_HH_agg

*creating quantile specific gini
bysort q_agg: adgini agg_per_week_wage
*creating quantile specific gini for HH agg weekly wage
bysort q_HH_agg: adgini agg_HH_per_week_wage





*recoding gen ed lev
recode gen_ed_lev (1/4=1 "Not Literate") (5/7=2 "Primary") (8/10=3 "Secondary") (11/13=4 "Tertiary") (else=0 "Everything else"), gen (gen_ed_lev_recoded)



*operations on 19/04/2020
*Final Oaxaca decomp 3fold interms of sceondary edu and below v/s Tertiary
*recoding to get group var (Including Not Literate)
recode gen_ed_lev  (1/10=0 ) (11/13=99), gen (gen_ed_ox_tot)
*recoding to get group var (Without Not Literate)
recode gen_ed_lev  (5/10=0 ) (11/13=99), gen (gen_ed_ox)


*Oaxaca command (Without Not Literate)
oaxaca log_agg_per_week_wage age age_sqr form_ed_lev voc_tech_ed_stat_recoded sta_cde_P_recoded indus_cde_P_recoded Sector relgn_recoded sex_recoded sc_grp_recoded, by(gen_ed_ox) threefold(reverse)


*Oaxaca command (Including Not Literate) 
oaxaca log_agg_per_week_wage age age_sqr form_ed_lev voc_tech_ed_stat_recoded sta_cde_P_recoded indus_cde_P_recoded Sector relgn_recoded sex_recoded sc_grp_recoded, by(gen_ed_ox_tot) threefold(reverse)



drop if gen_ed_ox==1 | gen_ed_ox==2 | gen_ed_ox==3 | gen_ed_ox==4




*recoding to get group var (Without Not Literate)
drop if gen_ed_lev_recoded==1
recode gen_ed_lev  (5/10=1 ) (11/13=0), gen (gen_ed_ox_test)
oaxaca log_agg_per_week_wage age age_sqr form_ed_lev voc_tech_ed_stat_recoded sta_cde_P_recoded indus_cde_P_recoded Sector relgn_recoded sex_recoded sc_grp_recoded, by(gen_ed_ox_test) threefold






*****DONT RUN
oaxaca log_agg_per_week_wage age age_sqr sta_cde_P_recoded indus_cde_P_recoded Sector relgn_recoded sex_recoded sc_grp_recoded, by(gen_ed_ox_test) threefold

reg log_agg_per_week_wage age age_sqr i.sta_cde_P_recoded i.indus_cde_P_recoded i.Sector i.relgn_recoded i.sex_recoded i.sc_grp_recoded, allbase 



*********corrected oaxaca********
 drop if gen_ed_lev_recoded==1
 recode gen_ed_lev  (5/10=1 ) (11/13=0), gen (gen_ed_ox_test)
 tab1 voc_tech_ed_stat_recoded , nol gen (voc)
 tab1 sta_cde_P_recoded , nol gen (PSA)
 tab1  indus_cde_P_recoded , nol gen (indus)
 tab1  Sector , nol gen (Sectr)
 tab1  relgn_recoded , nol gen (relgn)
 tab1  sex_recoded , nol gen (sex)
 tab1  sc_grp_recoded , nol gen (sc)
 oaxaca log_agg_per_week_wage age age_sqr form_ed_lev  voc2 voc3  PSA2 PSA3  indus2 indus3 Sectr2  relgn2 relgn3 sex2 sc1 sc2 sc3 , by(gen_ed_ox_test) threefold
***************************************






* run this only to save LT trim
save "E:\PLFS\PER FV LF trim.dta" , replace
*for pendrive
save "F:\Ewan\Confidential\PER FV LF trim.dta", replace

