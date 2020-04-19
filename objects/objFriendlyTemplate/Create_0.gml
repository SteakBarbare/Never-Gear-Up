//Globals Stats
robotLife = 100;
robotSpeed = 2;
robotDodge = 5;
robotDamage = 50;

//activate

activate = false;

xOriginal = x;

damage = false;

dice = 0;

animationSet = false;
//isDashing
dash = false;
hsp = 0;
animTime = 0;

//pause
combat = false;

//Life Parts --- 0 = life

robotPart[0, 0] = 20; // Head
robotPart[1, 0] = 40; // Body
robotPart[2, 0] = 30; // rightArm
robotPart[3, 0] = 30; // leftArm
robotPart[4, 0] = 30; // rightLeg
robotPart[5, 0] = 30; // leftLeg

//Parts --- 1 = parti

robotPart[0, 1] = "default"; // Head
robotPart[1, 1] = "default"; // Body
robotPart[2, 1] = "default"; // rightArm
robotPart[3, 1] = "default"; // leftArm
robotPart[4, 1] = "default"; // rightLeg
robotPart[5, 1] = "default"; // leftLeg

//Parts --- 2 = modifier

robotPart[0, 2] = 0; // Head
robotPart[1, 2] = 0; // Body
robotPart[2, 2] = 0; // rightArm
robotPart[3, 2] = 0; // leftArm
robotPart[4, 2] = 0; // rightLeg
robotPart[5, 2] = 0; // leftLeg

//Turn Var
turnMaxTimer = room_speed * 3;
turnTimer = irandom(robotSpeed);
isActive = false;

//Combat Var
win = false;