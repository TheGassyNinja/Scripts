 
# Declare Vars
ACSTATUS=` acpi -a | awk '{print $3}'`

echo $ACSTATUS

if [ "$ACSTATUS" == "off-line" ];
	then
		play -q -v 3 ~/Scripts/Sounds/oh-hell-no.mp3 & notify-send -w "OFF-LINE!!!!"

fi
echo "END OF LINE"

