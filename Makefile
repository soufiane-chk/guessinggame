
SHELL := /bin/bash

README.md: guessinggame.sh
	@echo "# Guessing Game Project" > README.md
	@echo "" >> README.md
	@echo "## Date et heure d'exécution" >> README.md
	@date '+%a %b %d %H:%M:%S %Z %Y' >> README.md
	@echo "" >> README.md
	@echo "## Nombre de lignes dans guessinggame.sh" >> README.md
	@wc -l < guessinggame.sh >> README.md
	@echo "" >> README.md
	@echo "## Description du projet" >> README.md
	@echo "Ce projet est un jeu Bash qui demande à l'utilisateur de deviner le nombre de fichiers dans le répertoire courant." >> README.md

.PHONY: clean
clean:
	@rm -f README.md
