#! /bin/bash
#Sophie Loughlin
if [[ -z "$1" ]]
	then
		echo "Usage: RegexAnswers.sh filename\n"
		exit 1
fi
egrep '[[:digit:]]$' $1 | wc -l
egrep -vc '^[aeiouAEIOU]' $1
egrep '^[[:alpha:]]{12}$' $1 | egrep -vic '[^a-z]'
egrep -c '[[:digit:]]{3}\-[[:digit:]]{3}\-[[:digit:]]{4}$' $1
egrep -c '303\-[[:digit:]]{3}\-[[:digit:]]{4}$' $1
egrep '^[aeiouAEIOU]' $1 | egrep -c '[[:digit:]]$'
egrep -c "@geocities.com" $1
egrep '@' $1 | egrep -vc '[0-9a-zA-Z\.\-]@[a-zA-Z\.\-]'