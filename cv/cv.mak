!INCLUDE ..\COMMON\MAKEMACS

FLAGS = $(MASMFLAGS)
SRC = $(BASE)\CV
CFLAGS=-I..\common -r -N_

ALL : $(LIB)\CV.LIB

$(LIB)\CV.LIB : $(OBJ)\CVMODALL.OBJ $(OBJ)\XDEBUG.OBJ $(OBJ)\CVMOD4.OBJ $(OBJ)\CVSTUFF.OBJ $(OBJ)\TXTOMF.OBJ $(OBJ)\CVINDEX.OBJ \
		$(OBJ)\CVPUB4.OBJ $(OBJ)\CVLIN4.OBJ $(OBJ)\QSORTLIN.OBJ $(OBJ)\CVLIBRAR.OBJ $(OBJ)\CVSEGTBL.OBJ $(OBJ)\CVTYPES.OBJ \
		$(OBJ)\CVSYMBOL.OBJ $(OBJ)\CVTYPCON.OBJ $(OBJ)\CVGLBALL.OBJ $(OBJ)\CVSTAALL.OBJ $(OBJ)\CVPUBALL.OBJ $(OBJ)\CVTYPALL.OBJ \
		$(OBJ)\INSTGSYM.OBJ $(OBJ)\CVFILALL.OBJ $(OBJ)\QSORTADR.OBJ $(OBJ)\DERIVATE.OBJ $(OBJ)\CVMOD3.OBJ \
		$(OBJ)\CVPUBLIC.OBJ $(OBJ)\CVLINNUM.OBJ $(OBJ)\CVSYM1.OBJ \
		$(OBJ)\instgsymc.obj $(OBJ)\cvsymbolc.obj $(OBJ)\cvhashesc.obj $(OBJ)\xdebugc.obj
  OPTLIB /OKMULTI $(LIB)\CV ~+ $(OBJ)\*;

$(OBJ)\CVMODALL.OBJ : CVMODALL.ASM ..\COMMON\MACROS ..\COMMON\MODULES
  ML $(FLAGS) $(SRC)\CVMODALL.ASM

$(OBJ)\CVMOD4.OBJ : CVMOD4.ASM ..\COMMON\MACROS ..\COMMON\MODULES ..\COMMON\SEGMENTS ..\COMMON\IO_STRUC
  ML $(FLAGS) $(SRC)\CVMOD4.ASM

$(OBJ)\CVMOD3.OBJ : CVMOD3.ASM ..\COMMON\MACROS ..\COMMON\MODULES ..\COMMON\SEGMENTS ..\COMMON\IO_STRUC
  ML $(FLAGS) $(SRC)\CVMOD3.ASM

$(OBJ)\CVSTUFF.OBJ : CVSTUFF.ASM ..\COMMON\MACROS ..\COMMON\MODULES ..\COMMON\SEGMENTS ..\COMMON\CVTYPES
  ML $(FLAGS) $(SRC)\CVSTUFF.ASM

$(OBJ)\XDEBUG.OBJ : XDEBUG.ASM ..\COMMON\MACROS
  ML $(FLAGS) $(SRC)\XDEBUG.ASM

$(OBJ)\TXTOMF.OBJ : TXTOMF.ASM ..\COMMON\MACROS
  ML $(FLAGS) $(SRC)\TXTOMF.ASM

$(OBJ)\CVINDEX.OBJ : CVINDEX.ASM ..\COMMON\MACROS
  ML $(FLAGS) $(SRC)\CVINDEX.ASM

$(OBJ)\CVPUB4.OBJ : CVPUB4.ASM ..\COMMON\MACROS ..\COMMON\MODULES ..\COMMON\SEGMENTS ..\COMMON\SYMBOLS
  ML $(FLAGS) $(SRC)\CVPUB4.ASM

$(OBJ)\CVPUBLIC.OBJ : CVPUBLIC.ASM ..\COMMON\MACROS ..\COMMON\MODULES ..\COMMON\SYMBOLS
  ML $(FLAGS) $(SRC)\CVPUBLIC.ASM

$(OBJ)\CVLIN4.OBJ : CVLIN4.ASM ..\COMMON\MACROS ..\COMMON\MODULES ..\COMMON\SEGMENTS ..\COMMON\CVSTUFF
  ML $(FLAGS) $(SRC)\CVLIN4.ASM

$(OBJ)\CVLINNUM.OBJ : CVLINNUM.ASM ..\COMMON\MACROS ..\COMMON\MODULES ..\COMMON\SEGMENTS
  ML $(FLAGS) $(SRC)\CVLINNUM.ASM

$(OBJ)\QSORTLIN.OBJ : QSORTLIN.ASM ..\COMMON\MACROS ..\COMMON\CVSTUFF
  ML $(FLAGS) $(SRC)\QSORTLIN.ASM

$(OBJ)\QSORTADR.OBJ : QSORTADR.ASM ..\COMMON\MACROS ..\COMMON\CVSTUFF
  ML $(FLAGS) $(SRC)\QSORTADR.ASM

$(OBJ)\CVLIBRAR.OBJ : CVLIBRAR.ASM ..\COMMON\MACROS ..\COMMON\LIBRARY ..\COMMON\IO_STRUC
  ML $(FLAGS) $(SRC)\CVLIBRAR.ASM

$(OBJ)\CVSEGTBL.OBJ : CVSEGTBL.ASM ..\COMMON\MACROS ..\COMMON\SEGMENTS ..\COMMON\GROUPS ..\COMMON\CLASSES ..\COMMON\PE_STRUC ..\COMMON\EXES ..\COMMON\CVSTUFF
  ML $(FLAGS) $(SRC)\CVSEGTBL.ASM

$(OBJ)\CVTYPES.OBJ : CVTYPES.ASM ..\COMMON\MACROS ..\COMMON\CVTYPES
  ML $(FLAGS) $(SRC)\CVTYPES.ASM

$(OBJ)\CVSYMBOL.OBJ : CVSYMBOL.ASM ..\COMMON\MACROS ..\COMMON\CVTYPES
  ML $(FLAGS) $(SRC)\CVSYMBOL.ASM

$(OBJ)\CVSYM1.OBJ : CVSYM1.ASM ..\COMMON\MACROS ..\COMMON\CVTYPES
  ML $(FLAGS) $(SRC)\CVSYM1.ASM

$(OBJ)\CVTYPCON.OBJ : CVTYPCON.ASM ..\COMMON\MACROS ..\COMMON\CVTYPES
  ML $(FLAGS) $(SRC)\CVTYPCON.ASM

$(OBJ)\CVGLBALL.OBJ : CVGLBALL.ASM ..\COMMON\MACROS ..\COMMON\CVTYPES
  ML $(FLAGS) $(SRC)\CVGLBALL.ASM

$(OBJ)\CVSTAALL.OBJ : CVSTAALL.ASM ..\COMMON\MACROS ..\COMMON\CVTYPES
  ML $(FLAGS) $(SRC)\CVSTAALL.ASM

$(OBJ)\CVPUBALL.OBJ : CVPUBALL.ASM ..\COMMON\MACROS ..\COMMON\MODULES ..\COMMON\SEGMENTS ..\COMMON\SYMBOLS ..\COMMON\CVTYPES ..\COMMON\PE_STRUC
  ML $(FLAGS) $(SRC)\CVPUBALL.ASM

$(OBJ)\CVTYPALL.OBJ : CVTYPALL.ASM ..\COMMON\MACROS ..\COMMON\CVTYPES
  ML $(FLAGS) $(SRC)\CVTYPALL.ASM

$(OBJ)\CVHASHES.OBJ : CVHASHES.ASM ..\COMMON\MACROS ..\COMMON\CVSTUFF ..\COMMON\CVTYPES
  ML $(FLAGS) $(SRC)\CVHASHES.ASM

$(OBJ)\INSTGSYM.OBJ : INSTGSYM.ASM ..\COMMON\MACROS ..\COMMON\CVTYPES
  ML $(FLAGS) $(SRC)\INSTGSYM.ASM

$(OBJ)\CVFILALL.OBJ : CVFILALL.ASM ..\COMMON\MACROS ..\COMMON\MODULES ..\COMMON\CVSTUFF
  ML $(FLAGS) $(SRC)\CVFILALL.ASM

$(OBJ)\DERIVATE.OBJ : DERIVATE.ASM ..\COMMON\MACROS ..\COMMON\CVTYPES
  ML $(FLAGS) $(SRC)\DERIVATE.ASM

$(OBJ)\cvhashesc.obj : cvhashesc.c
	dmc -c cvhashesc -NTCVPACK_TEXT $(CFLAGS) -o$(OBJ)\cvhashesc.obj

$(OBJ)\cvsymbolc.obj : cvsymbolc.c
	dmc -c cvsymbolc -NTCVPACK_TEXT $(CFLAGS) -o$(OBJ)\cvsymbolc.obj

$(OBJ)\instgsymc.obj : instgsymc.c
	dmc -c instgsymc -NTPASS2_TEXT $(CFLAGS) -o$(OBJ)\instgsymc.obj

$(OBJ)\xdebugc.obj : xdebugc.c
	dmc -c xdebugc -NTPASS2_TEXT $(CFLAGS) -o$(OBJ)\xdebugc.obj


