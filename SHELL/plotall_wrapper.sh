#!/bin/bash
cd /home/itu/Dropbox/Zeta/Graduate_Thesis/All_info/Cflux/bash_results

idl -e "decay2c"

cp decay2c.sav /home/itu/Dropbox/Zeta/Graduate_Thesis/ARMIN_SOFTWARE/Armin/IDL_project/draw_lum/draw_lum_cflux

cd /home/itu/Dropbox/Zeta/Graduate_Thesis/ARMIN_SOFTWARE/Armin/IDL_project/draw_lum/draw_lum_cflux

idl -e "plotall_avrlum"

#$ find . -name \*.eps -exec cp {} /home/itu/Dropbox/Zeta/My Latex/Reports/Project_Update/Images/Results/Avr_lum \;
##############################################

cp decay2c.sav /home/itu/Dropbox/Zeta/Graduate_Thesis/ARMIN_SOFTWARE/Armin/IDL_project/Histogram/Hist3_cflux

cd /home/itu/Dropbox/Zeta/Graduate_Thesis/ARMIN_SOFTWARE/Armin/IDL_project/Histogram/Hist3_cflux

idl -e "plotall_histogram"
##############################################

cp decay2c.sav /home/itu/Dropbox/Zeta/Graduate_Thesis/ARMIN_SOFTWARE/Armin/IDL_project/Inc_angle

cd /home/itu/Dropbox/Zeta/Graduate_Thesis/ARMIN_SOFTWARE/Armin/IDL_project/Inc_angle
 
idl -e "plotall_angle"
##############################################

cp decay2c.sav /home/itu/Dropbox/Zeta/Graduate_Thesis/ARMIN_SOFTWARE/Armin/IDL_project/binary_period

cd /home/itu/Dropbox/Zeta/Graduate_Thesis/ARMIN_SOFTWARE/Armin/IDL_project/binary_period

idl -e "plotall_bperiod"
##############################################

cp decay2c.sav /home/itu/Dropbox/Zeta/Graduate_Thesis/ARMIN_SOFTWARE/Armin/IDL_project/plotting_ratios

cd /home/itu/Dropbox/Zeta/Graduate_Thesis/ARMIN_SOFTWARE/Armin/IDL_project/plotting_ratios

idl -e "plotall_plratio"

exit 0
