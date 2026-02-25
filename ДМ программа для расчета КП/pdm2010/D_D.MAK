#############################################################
#
#   Copyright (c) 1991 МГТУ им. Н.Э.Баумана All rights reserved
#
#        makefile для построения библиотеки d_fil
#
#        Разработал: Хитрово А.А.
#        Дата      : 16-фев-91
# Исправления 21-12-2006. Подпрограммы PUT1,PUT2,PUT3,PUT 
#  (из каталога D_FOR), FOUT, FOUTMRK
#  непосредственно помещаются в D.lib
#  D.lib должна быть в каталоге D_Fil
#  Далее следует скопировать новую D.lib в FORTRAN\LIB\
#############################################################

# обработка модулей на Фортране

P_FOR=..\for
FLG=/FPa

# описание общих областей


d.lib:     FOUT.FOR
           fl$(FLG) /c $**
           lib d.lib -+fout;

d.lib:     FOUTMRK.FOR
           fl$(FLG) /c $**
           lib d.lib -+foutmrk;

d.lib:     LINPUT.FOR
           fl$(FLG) /c $**
           lib d.lib -+linput;

d.lib:     PUT.FOR
           fl$(FLG) /c $**
           lib d.lib -+put;

d.lib:     PUT1.FOR
           fl$(FLG) /c $**
           lib d.lib -+put1;

d.lib:     PUT2.FOR
           fl$(FLG) /c $**
           lib d.lib -+put2;

d.lib:     PUT3.FOR
           fl$(FLG) /c $**
           lib d.lib -+put3;
           del *.obj
