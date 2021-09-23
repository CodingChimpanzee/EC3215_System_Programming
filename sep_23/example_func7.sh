#! /bin/bash
add() {
	return $(($1+$2))
}
multiply() {
	return $(($1*$2))
}

# call addition for 3 and 4 == 7
add 3 4
ans1=$?
# call multiplication for 3 by 4 == 12
multiply 3 4
ans2=$?
# call addition for 5 and 4 == 9
add 5 4
# store answer (always stores final function call returned variable)
ans3=$?
echo "$ans1"
echo "$ans2"
echo "$ans3"
