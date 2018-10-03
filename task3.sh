# Usage: bash task3.sh
college=$(cat wages.csv | grep -E "([A-Za-z]+\,[0-9]+\,16\,[0-9]+)" | sort -n -t , -k 4 | head -n 1 | cut -d , -f 4)
# wrote regex to find an expression with xxx,xxx,16,xxx.grepped for a group. tested worked
# sorted numerically with respect to the fourth field (wage) and got the first line (lowest wage)
# now cut out the minimum wage. I think it's nice to cut out the wage number from the entier row last, because then if you want to see the whole row of who got the minimum wage and their gender and stuff you just have to delete the last pipe in the script
highschool=$(cat wages.csv | grep -E "([A-Za-z]+\,[0-9]+\,12\,[0-9]+)" | sort -n -t , -k 4 | head -n 1 | cut -d , -f 4)
echo "Minimum wage after graduating college is higher than minimum wage with a high school education by this much:"
echo $college-$highschool | bc
