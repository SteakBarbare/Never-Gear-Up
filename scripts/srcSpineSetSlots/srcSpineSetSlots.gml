/// @function			srcSpineSetSlots;
/// @param  {array}		robotParts				2D Array containing the health, state, and modificator of each parts
/// @description								Set the right Spine attachement to a skeleton depending on equiped / state of a body part

var robotParts, linkedSlots;

robotParts = argument[0];

for(var part = 0; part < array_length_2d(robotParts, 1); part++){
	show_debug_message(part);
	if(robotParts[1, part] == "Broken"){
		switch(part){
			case 0:
				srcSpineChangeAttachment("Head", "Head Broken");
			case 1:
				srcSpineChangeAttachment("Armor", "Armor Broken");
				srcSpineChangeAttachment("Waist", "Waist Broken");
			case 2:
				srcSpineChangeAttachment("Right Arm", "Right Arm Broken");
				srcSpineChangeAttachment("Right Hand", "Right Hand Broken");
			case 3:
				srcSpineChangeAttachment("Left Arm", "Left Arm Broken");
				srcSpineChangeAttachment("Left Hand", "Left Hand Broken");
			case 4:
				srcSpineChangeAttachment("Right Leg", "Right Leg Broken");
				srcSpineChangeAttachment("Right Foot", "Right Foot Broken");
			case 5:
				srcSpineChangeAttachment("Left Leg", "Left Leg Broken");
				srcSpineChangeAttachment("Left Foot", "Left Foot Broken");
		}
		
	}
	
}

