 #!/usr/bin/env bash

# Declare Vars
ACSTATUS=` acpi -a | awk '{print $3}'`

echo $ACSTATUS

if [ "$ACSTATUS" == "on-line" ];
	then
		mpg123 -q ~/Scripts/Sounds/oh-hell-no.mp3  & notify-send -u critical -w "OFF-LINE!!!!"

fi
