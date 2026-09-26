#!/bin/bash

# Choose an option:

while true; do
    echo "-----------------------------"
    echo "Welcome to Simple Bank"
    echo "1. Deposit"
    echo "2. Withdraw"
    echo "3. Check Balance"
    echo "4. Exit"
    echo "-----------------------------"

    initial_balance=1000
    read -p "Choose an option:" option

    case $option in 
        1) 
            read -p "Please enter an amount you want to deposit: " 
            ;;
        2)
            read -p "Please enter an amount you want to withdraw: "
            ;;
        3)
            read -p "Check balance "
            ;;
        4)
            read -p "Goodbye "
            ;;
        *)
            read -p "Invalid option! 
            Please choose a valid option."
            ;;
    esac   

done
