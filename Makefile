EXEC = main #remplacement variable ## compilateur de C --> CC = gcc, g++ (pour c++)

#a=main.o#remplacement de variablesss

$(EXEC) : main.o#call une variable $(VARIABLE)   -o --> le nom du output suivant, donc place le resultat dans -o qui est le main ici($(EXE))
	g++ -o $(EXEC) main.o

main.o : main.cpp #main.o depend de main.cpp (ORIENTE OBJET< DEPENDANCE D UNE AUTRE CLASS (insctanciation d un objet)) 
	g++ -o main.o -c main.cpp 
	
clean :
	rm -rf *.o $(EXEC) 

juste:main.o