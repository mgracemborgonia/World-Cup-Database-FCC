#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE games,teams")

cat games.csv | while IFS="," read -r YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
if [[ $YEAR != "year" ]]
then
  # get winner_id
  WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
  # if not found
  if [[ -z $WINNER_ID ]]
  then
  # display winner
    DISPLAY_WINNER=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
    # display winner team
    if [[ $DISPLAY_WINNER == "INSERT 0 1" ]]
    then
      WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
      WINNER_TEAM=$($PSQL "SELECT name FROM teams WHERE team_id='$WINNER_ID'")
      echo The winner is $WINNER_TEAM.
    fi
  fi
  # get ooponent id
  OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
  # if not found
  if [[ -z $OPPONENT_ID ]]
  then
  # display opponent
    DISPLAY_OPPONENT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
    # display opponent team
    if [[ $DISPLAY_OPPONENT == "INSERT 0 1" ]]
    then
      OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
      OPPONENT_TEAM=$($PSQL "SELECT name FROM teams WHERE team_id='$OPPONENT_ID'")
      echo $OPPONENT_TEAM loses the game.
    fi
  fi
  # display games data
  DISPLAY_GAMES=$($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) VALUES($YEAR,'$ROUND',$WINNER_ID,$OPPONENT_ID,$WINNER_GOALS, $OPPONENT_GOALS)")
  if [[ $DISPLAY_GAMES == "INSERT 0 1" ]]
  then
    echo "Game data displayed: $YEAR, $ROUND, $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS"
  else
    echo Unsuccessfully display game data.
  fi
fi
done
