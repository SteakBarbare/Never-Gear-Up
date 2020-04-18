//Globals Stats
robotLife = 100;
robotSpeed = 5;
robotDodge = 15;
robotDamage = 15;

//Life Parts --- 0 = life

robotPart[0, 0] = 20; // Head
robotPart[1, 0] = 20; // Body
robotPart[2, 0] = 20; // rightArm
robotPart[3, 0] = 20; // leftArm
robotPart[4, 0] = 20; // rightLeg
robotPart[5, 0] = 20; // leftLeg


//Turn Var
turnMaxTimer = room_speed * 3;
turnTimer = irandom(robotSpeed);
isActive = false;

//Combat Var
win = false;