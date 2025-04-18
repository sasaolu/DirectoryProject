#!/usr/local/bin/bash

# Base directory inside DirectoryProject
mkdir -p "$(pwd)/PlanetGreen"

# Banks and their departments
banks=("Earth" "Fire" "Wind" "Water" "Heart")
departments=("IT" "Executive" "HR" "Finance" "Operations")

# Subdirectories for each department
declare -A subdirs
subdirs[IT]="Management Engineering 'Systems Administration' Security Networking"
subdirs[Executive]=""
subdirs[HR]="Management Audit Payroll Benefits Policies"
subdirs[Finance]="Management 'Expense Reports' Budgets"
subdirs[Operations]="Management 'Customer Care' Sales"

# HR sub-subdirs
hr_policy_years=("2023" "2024")

# Finance Expense Reports months
months=("January" "February" "March" "April" "May" "June" "July" "August" "September" "October" "November" "December")

# Finance Budgets
finance_budgets=("Proposed" "Actual")

for bank in "${banks[@]}"; do
  for dept in "${departments[@]}"; do
    base_dir="$(pwd)/PlanetGreen/$bank/$dept"
    mkdir -p "$base_dir"

    for sub in ${subdirs[$dept]}; do
      mkdir -p "$base_dir/$sub"

      # Special case for HR Policies
      if [[ "$dept" == "HR" && "$sub" == "Policies" ]]; then
        for year in "${hr_policy_years[@]}"; do
          mkdir -p "$base_dir/$sub/$year"
        done
      fi

      # Special case for Finance Expense Reports
      if [[ "$dept" == "Finance" && "$sub" == "Expense Reports" ]]; then
        for month in "${months[@]}"; do
          mkdir -p "$base_dir/$sub/$month"
        done
      fi

      # Special case for Finance Budgets
      if [[ "$dept" == "Finance" && "$sub" == "Budgets" ]]; then
        for b in "${finance_budgets[@]}"; do
          mkdir -p "$base_dir/$sub/$b"
        done
      fi

    done
  done
done

echo "Directory structure created successfully inside: $(pwd)/PlanetGreen"

