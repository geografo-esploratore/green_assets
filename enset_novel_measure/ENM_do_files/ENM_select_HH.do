*************************************************************************************************
*																								*
*				Green Assets do file #1															*
*																								*
*				This file: Selects the households from 3 waves of ESS data for analysis			*																			*
*																								*
*																								*
*				Created by: Nathan Morrow nmorrow@tulane.edu									*
*									Updated: 26_12_2022											*
*************************************************************************************************




		****Step 1 ******

* Go to World Bank micro data website -- as of date of update --  https://microdata.worldbank.org/index.php/home

* search for LSMS ISA Ethiopia 
* wave 1 https://microdata.worldbank.org/index.php/catalog/2053
* wave 2 https://microdata.worldbank.org/index.php/catalog/2247
* wave 3 https://microdata.worldbank.org/index.php/catalog/2783

*Register and download the data



		****Step 2	******
		
		
*Use this .dta file to select households from data set that have been pre-screened during data cleaning for location in SNNP region, for panel dropouts, for rural HH, for small farms

* gr_asset8_22_longb.dta needs to be changed back to wide and just a list of HHIDS recorded 


* step 3 -- follow do files to calulate the different indicators like TLU, mat_area etc

* stp 4 -- convert from wide to long data format



