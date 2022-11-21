#!/bin/bash

userInput="-1";

while true; do
echo -e "0-Exit\n1-Intro\n2-Display Files\n3-Credits";
read userInput;
	if (("$userInput" == "0" )); then
		break
	elif (("$userInput" == "1" )); then
		echo -e "This website application allows students to reserve study rooms that are 
available in the Pollak Library through a reservation system. Students 
must log-in using their CSUF login credentials in order to reserve a 
room. Each student can reserve a room in 30 minutes increments with a 
3 hour reservation limit. Rooms that are available can be sorted 
based on room capacity. The web application allows users to make a 
reservation by selecting the number of people reserving the room and selecting
how long the room will be reserved for. The user will then be promoted with 
every possible reservation they can make with the times available for the
next 2 weeks. Last step is to review the reservation details and to select
confirm. Users can view their past and current reservations by selecting the
Configure Reservationsbutton found in the home page. Users can delete a
reservation up to one hour before the reservation start time has passed."
	elif (("$userInput" == "2" )); then
		find -name "login.js" -exec cat {} \;
		find -name "home.js" -exec cat {} \;
		find -name "reservation.js" -exec cat {} \;
	elif (("$userInput" == "3" )); then
		echo -e "Programmed by: Claire Rhoda & Adrian Puentes"
	fi
done