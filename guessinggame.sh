
#variables
userinput=0
success=0

#functions
function getcounter {
touch counter.txt
ls -1 >> counter.txt
linecounter=0
linecounter=$(wc -l < counter.txt)
rm counter.txt
}

function checkguess {
echo "How many lines do you think are in this directory?"
read userinput
echo "You said:" $userinput

if [[ $userinput -eq $linecounter ]]
then 
	echo "You are correct, congratulations!"
	success=1
elif [[ $userinput -gt $linecounter ]]
then 
	echo "Your guess was too high."
elif [[ $userinput -lt $linecounter ]]
then 
	echo "Your guess was too low."
fi
}

#value checks
getcounter

while [[ $success -eq 0 ]]
do
	checkguess
done

echo "There are" $linecounter


