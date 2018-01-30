; This program create a single array of structure which holds all the outburst.

; It first replicate the desired structure with the help of prep_datastructure.

; restored filed can not be put directly into the new structure since they are anonymous. So the program first copy them into a temporarly structure, then asign them into the Decay structure

;  call .r decay

prep_datastructure, outstr

Decay = replicate(outstr, 19)

restore,'GRO1655.sav'
restore,'st33942003.sav'
restore,'st33942005.sav'
restore,'st33942007.sav'
restore,'st33942011.sav'
restore,'st17432003.sav'
restore,'st17432008.sav'
restore,'st17432009.sav'
restore,'st17432010.sav'
restore,'st17432011.sav'
restore,'J1720.sav'
restore,'J1752.sav'
restore,'J1817.sav'
restore,'J1908.sav'
restore,'U1543.sav'
restore,'st15501999.sav'
restore,'st15502000.sav'
restore,'XTE1650.sav'
restore,'XTE1748.sav'

tmpstr0 = Decay[0]
tmpstr1 = Decay[1]
tmpstr2 = Decay[2]
tmpstr3 = Decay[3]
tmpstr4 = Decay[4]
tmpstr5 = Decay[5]
tmpstr6 = Decay[6]
tmpstr7 = Decay[7]
tmpstr8 = Decay[8]
tmpstr9 = Decay[9]
tmpstr10 = Decay[10]
tmpstr11 = Decay[11]
tmpstr12 = Decay[12]
tmpstr13 = Decay[13]
tmpstr14 = Decay[14]
tmpstr15 = Decay[15]
tmpstr16 = Decay[16]
tmpstr17 = Decay[17]
tmpstr18 = Decay[18]

copy_struct, GRO1655, tmpstr0
copy_struct, st33942003, tmpstr1
copy_struct, st33942005, tmpstr2
copy_struct, st33942007, tmpstr3
copy_struct, st33942011, tmpstr4
copy_struct, st17432003, tmpstr5
copy_struct, st17432008, tmpstr6
copy_struct, st17432009, tmpstr7
copy_struct, st17432010, tmpstr8
copy_struct, st17432011, tmpstr9
copy_struct, J1720, tmpstr10
copy_struct, J1752, tmpstr11
copy_struct, J1817, tmpstr12
copy_struct, J1908, tmpstr13
copy_struct, U1543, tmpstr14
copy_struct, st15501999, tmpstr15
copy_struct, st15502000, tmpstr16
copy_struct, XTE1650, tmpstr17
copy_struct, XTE1748, tmpstr18

Decay[0] = tmpstr0
Decay[1] = tmpstr1
Decay[2] = tmpstr2
Decay[3] = tmpstr3
Decay[4] = tmpstr4
Decay[5] = tmpstr5
Decay[6] = tmpstr6
Decay[7] = tmpstr7
Decay[8] = tmpstr8
Decay[9] = tmpstr9
Decay[10] = tmpstr10
Decay[11] = tmpstr11
Decay[12] = tmpstr12
Decay[13] = tmpstr13
Decay[14] = tmpstr14
Decay[15] = tmpstr15
Decay[16] = tmpstr16
Decay[17] = tmpstr17
Decay[18] = tmpstr18

END
