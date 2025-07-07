#!/bin/bash

echo "Welcome to Basic Shell Calculator"

# Prompt user for input
read -p "Enter first number: " num1
read -p "Enter operator (+ - * /): " op
read -p "Enter second number: " num2

# Perform calculation using case
case $op in
  +)
    result=$((num1 + num2))
    ;;
  -)
    result=$((num1 - num2))
    ;;
  \*)
    result=$((num1 * num2))
    ;;
  /)
    if [ "$num2" -eq 0 ]; then
      echo "Error: Division by zero"
      exit 1
    fi
    result=$((num1 / num2))
    ;;
  *)
    echo "Invalid operator entered"
    exie 1
    ;;
esac

echo "Result: $num1 $op $num2 = $result"
