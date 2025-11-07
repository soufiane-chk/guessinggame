#!/usr/bin/env bash

ask_guess() {
  echo -n "Combien de fichiers se trouvent dans le répertoire actuel ? "
  read guess
}

file_count=$(ls -1 | wc -l)

echo "Bienvenue dans le jeu du nombre de fichiers !"
echo "--------------------------------------------"

ask_guess

while [[ "$guess" -ne "$file_count" ]]
do
  if [[ "$guess" -lt "$file_count" ]]; then
    echo "Trop bas ! Essayez encore."
  else
    echo "Trop haut ! Essayez encore."
  fi
  ask_guess
done

echo "Félicitations 🎉 ! Vous avez trouvé le bon nombre de fichiers : $file_count"
