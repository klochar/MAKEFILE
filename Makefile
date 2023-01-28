EXEC = main #remplacement variable ## compilateur de C --> CC = gcc, g++ (pour c++)

#a=main.o#remplacement de variablesss

$(EXEC) : main.o#call une variable $(VARIABLE)   -o --> le nom du output suivant, donc place le resultat dans -o qui est le main ici($(EXE))
	g++ -o $(EXEC) main.o


# $@ permet de call la cible
# $^ permet de call toutes les dependences 
main.o : main.cpp #main.o depend de main.cpp (ORIENTE OBJET< DEPENDANCE D UNE AUTRE CLASS (insctanciation d un objet)) 
	g++ -o $@ -c $^

#donc on creer main.o(object avec main.cpp puisqu il depend de main.cpp (donc si dans une classe on depend d une autre classe il faudra l ajouter dans ses dependences) )
	
clean :
	rm -rf *.o $(EXEC) 

juste:main.o