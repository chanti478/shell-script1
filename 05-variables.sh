#!/bin/bash

echo "please enter your name"

read -s USERNAME # this is the variable where the value of the user and password
#this is only for valiadation, we should not print in the termnal

echo "Username entered is: $USERNAME"

echo "please enter your password"

read -s PASSWORD

echo "Password entered is: $PASSWORD"
