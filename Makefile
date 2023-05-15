main:
	flex lexer.l
	gcc -o a.out lex.yy.c
	./a.out