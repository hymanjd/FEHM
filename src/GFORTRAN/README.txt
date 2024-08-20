These files are included here to handle gfortran builds where binary is not supported.
Makefile will use these files instead of the files in src

Makefile:

inrestart.o : ${ALTDIR}inrestart.f
	${FC} ${FFLAGS} $< -c -o ${SRCDIR}$@

insptr.o : ${ALTDIR}insptr.f
	${FC} ${FFLAGS} $< -c -o ${SRCDIR}$@

