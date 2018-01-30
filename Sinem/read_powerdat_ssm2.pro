
file_names='MJD.txt'
fmt = 'A,D'
READCOL, file_names, obsid_tmp, mjd, format=fmt, skipline=2



lastname='_pf.fits'
fits_files = obsid_tmp + lastname
out_fits = 'merged.fits'

num_files = N_ELEMENTS(fits_files)

fits_tmp = ""

FOR i=0, num_files-2L DO BEGIN
 fits_tmp = fits_tmp + fits_files[i] + " "
ENDFOR

fits_tmp = fits_tmp + " " + fits_files[num_files-1L]

SPAWN, 'fmerge "' + fits_tmp + '" ' + out_fits + ' " " clobber=yes'


data_tmp = MRDFITS('merged.fits', 1)

; plot results

ask = 0
hc = 0 
sav = 0  

WINDOW, xsize = 800, ysize = 600, retain=2
!P.MULTI = [0,2,3] 

LOADCT, 39
TVLCT, r, g, b, /get
phi=findgen(16)*(!PI*2/16.)
phi = [ phi, phi(0) ]
usersym, cos(phi), sin(phi), /fill
char_size = 1.6


x1 = mjd

y1 = data_tmp.q9 
y1_err = data_tmp.eq9

y2 = data_tmp.gamma_s16
y2_err = data_tmp.egamma_s16 

y3 = data_tmp.n_qpo11 
y3_err = data_tmp.en_qpo11

y4 = data_tmp.n_2qpo12 
y4_err = data_tmp.en_2qpo12

y5 = data_tmp.n_3qpo13 
y5_err = data_tmp.en_3qpo13

y6 = data_tmp.n_sub14 
y6_err = data_tmp.en_sub14





replot:

max_x = MAX(x1)
min_x = MIN(x1)
range_x = max_x - min_x
xmin = min_x - (0.1 * range_x)
xmax = max_x + (0.1 * range_x)

max_y1 = MAX( y1 + y1_err )
min_y1 = MIN( y1 - y1_err )
range_y1 = max_y1 - min_y1
y1min = min_y1 - (0.5 * range_y1)
y1max = max_y1 + (0.5 * range_y1)

max_y2 = MAX( y2 + y2_err )
min_y2 = MIN( y2 - y2_err )
range_y2 = max_y2 - min_y2
y2min = min_y2 - (0.5 * range_y2)
y2max = max_y2 + (0.5 * range_y2)

max_y3 = MAX( y3 + y3_err )
min_y3 = MIN( y3 - y3_err )
range_y3 = max_y3 - min_y3
y3min = min_y3 - (0.5 * range_y3)
y3max = max_y3 + (0.5 * range_y3)

max_y4 = MAX( y4 + y4_err )
min_y4 = MIN( y4 - y4_err )
range_y4 = max_y4 - min_y4
y4min = min_y4 - (0.5 * range_y4)
y4max = max_y4 + (0.5 * range_y4)

max_y5 = MAX( y5 + y5_err )
min_y5 = MIN( y5 - y5_err )
range_y5 = max_y5 - min_y5
y5min = min_y5 - (0.5 * range_y5)
y5max = max_y5 + (0.5 * range_y5)

max_y6 = MAX( y6 + y6_err )
min_y6 = MIN( y6 - y6_err )
range_y6 = max_y6 - min_y6
y6min = min_y6 - (0.5 * range_y6)
y6max = max_y6 + (0.5 * range_y6)

; top panel

	PLOT, x1, y1, psym = 8, symsize = 0.6, xrange = [xmin,xmax], $
		xstyle = 1, yrange = [y1min, y1max], ystyle = 1, $
        	charsize = char_size, charthick = thick, thick = thick, $
		ythick = thick, xthick = thick, xticklen = 0.02, $
		yminor = 2, yticklen = 0.01,xtickformat='(I12)', xtitle='mjd',$
		ytitle='Q'

;, xtickname = REPLICATE(' ', 30), $
;		position = [0.1,0.6,0.9,0.9]
	
	OPLOTERR, x1, y1, y1_err, 3

;	str_top = '!7D!X!7X!X (10!u-12!n rad s!u-2!n)'
		
	;XYOUTS, 0.04, 0.67, str_top, charsize=1.1, orientation = 90, /norm	
		
	;XYOUTS, 0.015, 0.687, '.', charsize=1.9, /norm	
    
	;OPLOT, [xmin, xmax], [0.0, 0.0], linestyle = 1, thick = thick --> sifir cizgisini belirler
	
	
	PLOT, x1, y2, psym = 8, symsize = 0.6, xrange = [xmin,xmax], $
		xstyle = 1,yrange = [y2min, y2max], ystyle = 1, $
        	charsize = char_size, charthick = thick, thick = thick, $
		ythick = thick, xthick = thick, xticklen = 0.02, $
		yminor = 2, yticklen = 0.01,xtickformat='(I12)', xtitle='mjd',$
		ytitle='Gamma s'
	OPLOTERR, x1, y2, y2_err, 3  
        
    
        PLOT, x1, y3, psym = 8, symsize = 0.6, xrange = [xmin,xmax], $
		xstyle = 1,yrange = [y3min, y3max], ystyle = 1, $
        	charsize = char_size, charthick = thick, thick = thick, $
		ythick = thick, xthick = thick, xticklen = 0.02, $
		yminor = 2, yticklen = 0.01,xtickformat='(I12)', xtitle='mjd',$
		ytitle='N qpo'
	OPLOTERR, x1, y3, y3_err, 3


        PLOT, x1, y4, psym = 8, symsize = 0.6, xrange = [xmin,xmax], $
		xstyle = 1,yrange = [y4min, y4max], ystyle = 1, $
        	charsize = char_size, charthick = thick, thick = thick, $
		ythick = thick, xthick = thick, xticklen = 0.02, $
		yminor = 2, yticklen = 0.01,xtickformat='(I12)', xtitle='mjd',$
		ytitle='N 2QPO'
	OPLOTERR, x1, y4, y4_err, 3

        PLOT, x1, y5, psym = 8, symsize = 0.6, xrange = [xmin,xmax], $
		xstyle = 1,yrange = [y5min, y5max], ystyle = 1, $
        	charsize = char_size, charthick = thick, thick = thick, $
		ythick = thick, xthick = thick, xticklen = 0.02, $
		yminor = 2, yticklen = 0.01,xtickformat='(I12)', xtitle='mjd',$
		ytitle='N 3QPO'
	OPLOTERR, x1, y5, y5_err, 3

        PLOT, x1, y6, psym = 8, symsize = 0.6, xrange = [xmin,xmax], $
		xstyle = 1,yrange = [y6min, y6max], ystyle = 1, $
        	charsize = char_size, charthick = thick, thick = thick, $
		ythick = thick, xthick = thick, xticklen = 0.02, $
		yminor = 2, yticklen = 0.01,xtickformat='(I12)', xtitle='mjd',$
		ytitle='N sub'
	OPLOTERR, x1, y6, y6_err, 3


; save plot


IF (ask EQ 0) THEN hc = WIDMENU(['Hardcopy?','Yes','No'],init=1,title=0)

   IF ((ask EQ 0) AND (hc EQ 1)) THEN BEGIN
       SET_PLOT, 'PS'
       figure_file = ''
       READ, figure_file, PROMPT = ' Please input plot filename: '
       ;figure_file = 'sil.ps'
       DEVICE, xsize = 8.0, xoffset = 0.0, ysize = 9.0, yoffset = 0.0, $
	       /INCHES, filename = figure_file, color = 150
       ask = 1
       GOTO, replot
   ENDIF  
  
   IF ((ask EQ 1) AND (hc EQ 1)) THEN BEGIN
       DEVICE, /CLOSE
       SET_PLOT, 'X'
   ENDIF



END
