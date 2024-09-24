#!/bin/bash

# i got to merge everything from https://github.com/CPScript/system-audit/main.sh here... this is going to be very easy but im lazy so imma kms

basic_menu() {
    while true; do
        echo "1. Basic NMAP Network Scan"
        echo "2. Basic Vulnerability Assessment"
        echo "3. Basic Compliance Check"
        echo "4. Host System Information"
        echo "5. Password Policy Check"
        echo "6. Check Firewall Status"
        echo "7. Generate Host Audit Report"
        echo "8. Host Hardware Inventory Audit"
        echo "9. Software Inventory Audit"
        echo "10. User Account Audit"
        echo "11. Group Policy Audit"
        echo "0. Back"

        read -p "Choose an option [0-11]: " choice 

        case $choice in 
            1) perform_network_scan ;;
            2) perform_vulnerability_assessment ;;
            3) run_compliance_check ;;
            4) collect_system_info ;;
            5) check_password_policy ;;
            6) check_firewall_status ;;
            7) generate_audit_report ;;
            8) hardware_inventory_audit ;;
            9) software_inventory_audit ;;
            10) user_account_audit ;;
            11) group_policy_audit ;;
            0) back ;;
}

system_menu() {
    while true; do
        echo "1. Host System Configuration Audit"
        echo "2. Host System Performance Audit"
        echo "3. Host System Security Audit"
        echo "4. Host System Backup Audit"
        echo "5. Host System Restore Audit"
        echo "6. Host System Update Audit"
        echo "0. Back"

        read -p "Choose an option [0-6]: " choice 

        case $choice in 
            1) system_configuration_audit ;;
            2) system_performance_audit ;;
            3) system_security_audit ;;
            4) system_backup_audit ;;
            5) system_restore_audit ;;
            6) system_update_audit ;;
            0) back ;;
}

server_menu() {
    while true; do
        echo "1. Server Hardware Inventory Audit"
        echo "2. Server Software Inventory Audit"
        echo "3. Server User Account Audit"
        echo "4. Server Group Policy Audit"
        echo "5. Server Configuration Audit"
        echo "6. Server Performance Audit"
        echo "7. Server Security Audit"
        echo "8. Server Backup Audit"
        echo "9. Server Restore Audit"
        echo "10. Server Update Audit"
        echo "0. Back"

        read -p "Choose an option [0-10]: " choice 

        case $choice in 
            1) server_hardware_inventory_audit ;;
            2) server_software_inventory_audit ;;
            3) server_user_account_audit ;;
            4) server_group_policy_audit ;;
            5) server_configuration_audit ;;
            6) server_performance_audit ;;
            7) server_security_audit ;;
            8) server_backup_audit ;;
            9) server_restore_audit ;;
            10) server_update_audit ;;
            0) back ;;
}

network_menu() {
    while true; do
        echo "1. Network Topology Audit"
        echo "2. Network Device Audit"
        echo "3. Network Configuration Audit"
        echo "4. Network Performance Audit"
        echo "5. Network Security Audit"
        echo "6. Network Traffic Audit"
        echo "7. Network Protocol Audit"
        echo "8. Network Service Audit"
        echo "9. Network Access Audit"
        echo "10. Network Vulnerability Audit"
        echo "0. Back"

        read -p "Choose an option [0-10]: " choice 

        case $choice in 
            1) network_topology_audit ;;
            2) network_device_audit ;;
            3) network_configuration_audit ;;
            4) network_performance_audit ;;
            5) network_security_audit ;;
            6) network_traffic_audit ;;
            7) network_protocol_audit ;;
            8) network_service_audit ;;
            9) network_access_audit ;;
            10) network_vulnerability_audit ;;
            0) back ;;
}

scripting_menu() {
    while true; do
        echo "1. Script Syntax Audit"
        echo "2. Script Logic Audit"
        echo "3. Script Performance Audit"
        echo "4. Script Security Audit"
        echo "5. Script Compatibility Audit"
        echo "6. Script Error Handling Audit"
        echo "7. Script Logging Audit"
        echo "8. Script Testing Audit"
        echo "9. Script Deployment Audit"
        echo "10. Script Maintenance Audit"
        echo "0. Back"

        read -p "Choose an option [0-10]: " choice 

        case $choice in
            1) script_syntax_audit ;;
            2) script_logic_audit ;;
            3) script_performance_audit ;;
            4) script_security_audit ;;
            5) script_compatibility_audit ;;
            6) script_error_handling_audit ;;
            7) script_logging_audit ;;
            8) script_testing_audit ;;
            9) script_deployment_audit ;;
            10) script_maintenance_audit ;;
            0) back ;;

}

policys_check() {
 echo "hello, world"
}

main_menu() {
    while true; do
        echo "1. Check If Rooted?"
        echo "2. Basic Audit Tools"
        echo "3. Host system Audit Tools"
        echo "4. Server Audit Tools"
        echo "5. Network Audit Toolls"
        echo "6. Scripting Audit Tools"
        echo "7. Check Policys (system policys & repo licence)"
        echo "0. Exit"

        read -p "Choose an option [0-6]: " choice

        case $choice in
            1) check_root ;;
            2) basic_menu ;;
            3) system_menu ;;
            4) server_menu ;;
            5) network_menu ;;
            6) scripting_menu
            7) policys_check ;;
            0) exit 0 ;;
            *) echo "Invalid choice. Try again." ;;
        esac
    done
}

# <New audit functions go here>

main_menu
