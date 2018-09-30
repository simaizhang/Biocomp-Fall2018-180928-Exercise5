# Usage: bash task2.sh in the same directory as wages.csv
echo "The gender, yearsExperience, and wage for the highest earner is:"
cat wages.csv | sed '1d' | sort -n -t , -k 4 | tail -n 1
# remove the first line "gender,yearsExperience..." or else it gets sorted and comes up
# sort numerically with respect to the 4th field. the results come up from the lowest to the highest wage
echo "The gender, yearsExperience, and wage for the lowest earner is:"
cat wages.csv | sed '1d' | sort -n -t, -k 4 | head -n 1
echo "The number of females in the top ten earners in this data set is:"
cat wages.csv | sed '1d' | sort -n -t, -k 4 | tail -n 10 | grep -co "female"
# find the number of times the word "female" is mentioned in the top 10 wage entries
