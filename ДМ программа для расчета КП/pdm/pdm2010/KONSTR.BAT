:Echo Off
if not exist A.DXF  goto ERR1
if not exist cc.dat goto ERR1
COPY A.DXF+CC.DAT CCC.DXF
:>NUL:
DEL CC.DAT
if exist ccc.dwg del ccc.dwg
if exist ccc.scr ACAD CCC CCC
:ERR1
