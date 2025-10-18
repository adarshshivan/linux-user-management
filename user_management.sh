#!/bin/bash

# ============================================
# 🧩 Linux User Management Tool
# Author: Adarsh Shivan
# ============================================

while true; do
    echo "============================================"
    echo "   🧑‍💻 Linux User Management Tool"
    echo "============================================"
    echo "1. Add a New User"
    echo "2. Delete a User"
    echo "3. List All Users"
    echo "4. Check If User Exists"
    echo "5. Exit"
    echo "============================================"
    read -p "Enter your choice [1-5]: " choice

    case $choice in
        1)
            read -p "Enter the username to add: " username
            if id "$username" &>/dev/null; then
                echo "⚠️  User '$username' already exists!"
            else
                sudo useradd "$username" && echo "✅ User '$username' added successfully!"
            fi
            ;;
        2)
            read -p "Enter the username to delete: " username
            if id "$username" &>/dev/null; then
                sudo deluser "$username" && echo "🗑️  User '$username' deleted successfully!"
            else
                echo "❌ User '$username' does not exist!"
            fi
            ;;
        3)
            echo "👥 Listing all users:"
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

