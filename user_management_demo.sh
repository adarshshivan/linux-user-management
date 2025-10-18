#!/bin/bash

# ============================================
# 🧩 Linux User Management Tool (Safe Demo)
# Author: Adarsh Shivan
# ============================================

while true; do
    echo "============================================"
    echo "   🧑‍💻 Linux User Management Tool"
    echo "============================================"
    echo "1. Add a New User (Simulated)"
    echo "2. Delete a User (Simulated)"
    echo "3. List All Users (Real)"
    echo "4. Check If User Exists (Real)"
    echo "5. Exit"
    echo "============================================"
    read -p "Enter your choice [1-5]: " choice

    case $choice in
        1)
            read -p "Enter the username to add: " username
            echo "🧩 Simulating: Adding user '$username'..."
            sleep 1
            echo "✅ User '$username' added successfully (simulation)."
            ;;
        2)
            read -p "Enter the username to delete: " username
            echo "🧩 Simulating: Deleting user '$username'..."
            sleep 1
            echo "🗑️  User '$username' deleted successfully (simulation)."
            ;;
        3)
            echo "👥 Listing all users (real data):"
            cut -d: -f1 /etc/passwd
            ;;
        4)
            read -p "Enter the username to check: " username
            if id "$username" &>/dev/null; then
                echo "✅ User '$username' exists on the system."
            else
                echo "❌ User '$username' does not exist."
            fi
            ;;
        5)
            echo "👋 Exiting the tool. Goodbye!"
            exit 0
            ;;
        *)
            echo "⚠️  Invalid choice, please try again."
            ;;
    esac
    echo ""
    read -p "Press Enter to continue..."
    clear
done

