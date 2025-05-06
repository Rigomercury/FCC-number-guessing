#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))

echo "Enter your username:"
read USERNAME

RETURNING_USER=$($PSQL "SELECT username FROM users WHERE username='$USERNAME'")

if [[ -z $RETURNING_USER ]]
then
  INSERTED_USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games INNER JOIN users USING(user_id) WHERE username='$USERNAME'")
  BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games INNER JOIN users USING(user_id) WHERE username='$USERNAME'")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")

echo "Guess the secret number between 1 and 1000:"
read GUESS
TRIES=1

while true
do
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
  else
    if [[ $GUESS -eq $SECRET_NUMBER ]]
    then
      break
    elif [[ $GUESS -gt $SECRET_NUMBER ]]
    then
      echo "It's lower than that, guess again:"
    else
      echo "It's higher than that, guess again:"
    fi
    TRIES=$((TRIES+1))
  fi
  read GUESS
done

INSERT_GAME=$($PSQL "INSERT INTO games(user_id, guesses) VALUES($USER_ID, $TRIES)")
echo "You guessed it in $TRIES tries. The secret number was $SECRET_NUMBER. Nice job!"
