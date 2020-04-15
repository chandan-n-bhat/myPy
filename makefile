Mypy.out : lex.yy.c y.tab.c y.tab.h 
	gcc lex.yy.c y.tab.c -g -ll -o Mypy.out

y.tab.c : mypy_yacc.y
	yacc -dv mypy_yacc.y

lex.yy.c : mypy_lex.l
	lex mypy_lex.l

clean :
	rm lex.yy.c y.tab.c y.tab.h Mypy.out
