


*************************************************************************************************
*																								*
*				Green Assets do file #															*
*																								*
*				This file: Regressions *																			*
*																								*
*																								*
*				Created by: Nathan Morrow nmorrow@tulane.edu									*
*									Updated: 15_5_2023										*
*************************************************************************************************

*Set directories
*These paths indicate where the raw data files are located and where the created data and final data will be stored.
global ENSET_MEASURES_data

use use "${ENSET_MEASURES_data}/enset_datacalc_515.dta


*these are the regressions used in the paper

menbreg mins_ mat_etareaHA_ wtareaHA_w female_hh_w hh_size_w nom_totcons_aeq_ tlu_today_ nhhassetfs_w nagimp_assetfs_w  ||ea_loc: ||hhnum:  
menbreg mins_ wtareaHA_w female_hh_w hh_size_w nom_totcons_aeq_ tlu_today_ nhhassetfs_w nagimp_assetfs_w  ||ea_loc: ||hhnum: 
menbreg mins_ mat_etareaHA_  ||ea_loc: ||hhnum:  




gllamm fies_ mat_etareaHA_ , i(hhnum ea_loc) family(binomial)  link(ologit)  allc
estimates save fies_matonly
gllamm fies_ mat_etareaHA_ wtarea_w hh_size_w female_hh_w nom_totcons_aeq_ tlu_today_ nhhassetfs_w nagimp_assetfs_w, i(hhnum ea_loc) family(binomial)  link(ologit)  allc
estimates save fies_mat_fullmodel
gllamm fies_ wtarea_w hh_size_w female_hh_w nom_totcons_aeq_ tlu_today_ nhhassetfs_w nagimp_assetfs_w, i(hhnum ea_loc) family(binomial)  link(ologit)  allc
estimates save fies_mat_covariatemodel

*stunt new


xtmelogit stunt_w123 mat_etareaHA_ wtareaHA female_hh_w hh_size_w nom_totcons_aeq_ tlu_today_ nhhassetfs_w nagimp_assetfs_w  ||ea_loc: ||hhnum:
estat ic
xtmelogit stunt_w123  wtareaHA female_hh_w hh_size_w nom_totcons_aeq_ tlu_today_ nhhassetfs_w nagimp_assetfs_w  ||ea_loc: ||hhnum:
estat ic
xtmelogit stunt_w123 mat_etareaHA_  ||ea_loc: ||hhnum:
estat ic




*hdd

xtmepoisson hdd_ mat_etareaHA_ ||ea_loc:  ||hhnum: 
estat ic
xtmepoisson hdd_   wtareaHA female_hh_w hh_size_w nom_totcons_aeq_ tlu_today_ nhhassetfs_w nagimp_assetfs_w ||ea_loc:  ||hhnum: 
estat ic
xtmepoisson hdd_  mat_etareaHA_ wtareaHA female_hh_w hh_size_w nom_totcons_aeq_ tlu_today_ nhhassetfs_w nagimp_assetfs_w ||ea_loc:  ||hhnum: 
estat ic












