#!/bin/bash

# Simulated Group Names
declare -a groups=("Executive" "IT" "HR" "Finance" "Operations" "CEO")

# Simulated User Creation (Username: Full Name)
declare -A users
users=(
  ["GAH"]="Genoa A. Hattleburg"
  ["ASJ"]="Arthur S. Johnson"
  ["ENG"]="Erika N. Graham"
  ["DS"]="Daniella S. Sanchez"
  ["XJH"]="Xavier J. Hurston"
  ["MRJ"]="Michael R. Jones"
  ["JLB"]="Jessica L. Bach"
  ["RKJ"]="Raphael K. James"
  ["MSR"]="Mona S. Rupert"
  ["HDSJ"]="Hannah D. St. James"
  ["DDB"]="Donna D. Bradshaw"
  ["JYS"]="Johanas Y. Simon"
  ["DAR"]="David A. Rames"
  ["GNL"]="Gordon N. Lee"
  ["FSN"]="Frederico S. North"
  ["AKL"]="Amos K. Long"
  ["HJU"]="Hazel J. Uriah"
  ["GNL2"]="Gary N. Lee"  # Adding number to avoid name conflicts
  ["JLH"]="Joana L. Henry"
  ["KSH"]="Kyle S. Hendrick"
  ["KAC"]="Katrina A. Corinth"
  ["JSB"]="Jonathan S. Brown"
  ["RRW"]="Robert R. Winthrow"
  ["MAK"]="Melissa A. Keet"
  ["TES"]="Tracey E. Smith"
  ["EVQ"]="Elizabeth V. Querrell"
  ["TYC"]="Tisha Y. Corson"
  ["BJG"]="Byron J. Graham"
  ["JTC"]="Jordan T. Curry"
  ["BJG2"]="Bryson J. Gomez"  # Adding number to avoid name conflicts
  ["ATS"]="Alicia T. Stone"
)

# Simulate Creating Groups
for group in "${groups[@]}"; do
  echo "Simulating: Creating group: $group"
done

# Simulate User Creation
for username in "${!users[@]}"; do
  echo "Simulating: Creating user: $username - ${users[$username]}"
done

# Simulate Adding Users to Groups
for group in "${groups[@]}"; do
  echo "Simulating: Adding users to group: $group"
  case $group in
    "Executive")
      echo "Simulating: Adding Genoa A. Hattleburg, Arthur S. Johnson, Erika N. Graham, Daniella S. Sanchez, Xavier J. Hurston"
      ;;
    "IT")
      echo "Simulating: Adding Michael R. Jones, Jessica L. Bach, Raphael K. James, Mona S. Rupert, Hannah D. St. James, Donna D. Bradshaw, Johanas Y. Simon, David A. Rames, Gordon N. Lee, Frederico S. North, Amos K. Long, Hazel J. Uriah, Gary N. Lee"
      ;;
    "HR")
      echo "Simulating: Adding Joana L. Henry, Kyle S. Hendrick, Katrina A. Corinth"
      ;;
    "Finance")
      echo "Simulating: Adding Jonathan S. Brown, Robert R. Winthrow, Melissa A. Keet"
      ;;
    "Operations")
      echo "Simulating: Adding Tracey E. Smith, Elizabeth V. Querrell, Tisha Y. Corson, Byron J. Graham, Jordan T. Curry, Bryson J. Gomez, Alicia T. Stone"
      ;;
    "CEO")
      echo "Simulating: Adding Genoa A. Hattleburg"
      ;;
    *)
      echo "Simulating: Group $group not found"
      ;;
  esac
done

echo "Simulation complete! No actual changes made."

