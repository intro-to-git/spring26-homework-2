#!/bin/bash

questions=(
"What is the capital of France?"
"What is 2 + 2?"
"What color is the sky?"
"Who wrote Romeo and Juliet?"
"What is the largest planet in our solar system?"
)

answers=(
"Paris"
"4"
"blue"
"Shakespeare"
"Jupiter"
)

score=0

echo "Welcome to the Trivia Game!"

for i in "${!questions[@]}"; do
  echo "${questions[$i]}"
  read answer

  if [[ "$answer" == "${answers[$i]}" ]]; then
    echo "Correct!"
    ((score++))
  else
    echo "Wrong! Correct answer: ${answers[$i]}"
  fi

  echo ""
done

echo "Your final score is: $score"