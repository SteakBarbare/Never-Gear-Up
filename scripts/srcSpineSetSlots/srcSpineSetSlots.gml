/// @function			srcSpineSetSlots;
/// @param  {array}		robotParts				2D Array containing the health, state, and modificator of each parts
/// @description								Set the right Spine attachement to a skeleton depending on equiped / state of a body part

var robotParts, linkedSlots;

robotParts = argument[0];

for(var part = 0; part < array_length_2d(robotParts, 1); part++){
	if(robotParts[1, part] == "Broken"){
		switch(part){
			case 0:
				srcSpineChangeAttachment("Head", "Head Broken");
				break;
				
			case 1:
				srcSpineChangeAttachment("Armor", "Armor Broken");
				srcSpineChangeAttachment("Waist", "Waist Broken");
				break;
				
			case 2:
				srcSpineChangeAttachment("Right Arm", "Right Arm Broken");
				srcSpineChangeAttachment("Right Hand", "Right Hand Broken");
				break;
				
			case 3:
				srcSpineChangeAttachment("Left Arm", "Left Arm Broken");
				srcSpineChangeAttachment("Left Hand", "Left Hand Broken");
				break;
				
			case 4:
				srcSpineChangeAttachment("Right Leg", "Right Leg Broken");
				srcSpineChangeAttachment("Right Foot", "Right Foot Broken");
				break;
				
			case 5:
				srcSpineChangeAttachment("Left Leg", "Left Leg Broken");
				srcSpineChangeAttachment("Left Foot", "Left Foot Broken");
				break;
				
		}
		
	}else{
		switch(part){
			case 0:
				srcSpineChangeAttachment("Head", "Head " + robotParts[1, part]);
				break;
				
			case 1:
				srcSpineChangeAttachment("Armor", "Armor " + robotParts[1, part]);
				srcSpineChangeAttachment("Waist", "Waist " + robotParts[1, part]);
				
				break;
				
			case 2:
				srcSpineChangeAttachment("Right Arm", "Right Arm " + robotParts[1, part]);
				srcSpineChangeAttachment("Right Hand", "Right Hand " + robotParts[1, part]);
				break;
				
			case 3:
				srcSpineChangeAttachment("Left Arm", "Left Arm " + robotParts[1, part]);
				srcSpineChangeAttachment("Left Hand", "Left Hand " + robotParts[1, part]);
				break;
				
			case 4:
				srcSpineChangeAttachment("Right Leg", "Right Leg " + robotParts[1, part]);
				srcSpineChangeAttachment("Right Foot", "Right Foot " + robotParts[1, part]);
				break;
				
			case 5:
				srcSpineChangeAttachment("Left Leg", "Left Leg " + robotParts[1, part]);
				srcSpineChangeAttachment("Left Foot", "Left Foot " + robotParts[1, part]);
				break;
				
		}
	}
	
}
