#!/bin/bash

# This script is used to greet the users

# Get user name from user
read -p "Enter your name: " name

# Get current time
curr_time=$(date +%T)

echo "Hi ${name}, The time is ${curr_time} "
