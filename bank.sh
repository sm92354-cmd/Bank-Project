#!/bin/bash

# Starting balance
balance=1000

# Track total deposits and withdrawals
total_deposit=0
total_withdraw=0

while true; do

    echo "-----------------------------"
    echo "Welcome to Simple Bank"
    echo "1. Deposit"
    echo "2. Withdraw"
    echo "3. Check Balance"
    echo "4. Exit"
    echo "-----------------------------"

    read -p "Choose an option: " option

    case $option in

        1)
            read -p "Enter deposit amount: $" deposit

            balance=$((balance + deposit))
            total_deposit=$((total_deposit + deposit))

            echo "Deposit successful!"
            echo "Updated balance: $balance"
            ;;

        2)
            read -p "Enter withdrawal amount: $" withdraw

            if [ "$withdraw" -le "$balance" ]; then

                balance=$((balance - withdraw))
                total_withdraw=$((total_withdraw + withdraw))

                echo "Withdrawal successful!"
                echo "Updated balance: $balance"

            else
                echo "Insufficient balance!"
                echo "Current balance: $balance"
            fi
            ;;

        3)
            echo "Current balance: $balance"
            ;;

        4)
            echo "Goodbye!"
            exit 0
            ;;

        
        *)
            echo "Invalid option. Please choose 1-4."
            ;;
    esac
done

