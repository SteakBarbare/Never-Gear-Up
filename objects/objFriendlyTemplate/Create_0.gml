//Globals Stats
robotLife = 100;
robotSpeed = 3;
robotDodge = 10;
robotDamage = 5;
dead = false;

robotLifeMax = 100;

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
victorySound = false;

//Life Parts --- 0 = life
robotPart[0, 0] = 20; // Head
robotPart[0, 1] = 40; // Body
robotPart[0, 2] = 30; // rightArm
robotPart[0, 3] = 30; // leftArm
robotPart[0, 4] = 30; // rightLeg
robotPart[0, 5] = 30; // leftLeg

//Parts --- 1 = part

robotPart[1, 0] = "Default"; // Head
robotPart[1, 1] = "Default"; // Body
robotPart[1, 2] = "Default"; // rightArm
robotPart[1, 3] = "Default"; // leftArm
robotPart[1, 4] = "Default"; // rightLeg
robotPart[1, 5] = "Default"; // leftLeg

//Parts --- 2 = modifier

robotPart[2, 0] = 0; // Head
robotPart[2, 1] = 0; // Body
robotPart[2, 2] = 0; // rightArm
robotPart[2, 3] = 0; // leftArm
robotPart[2, 4] = 0; // rightLeg
robotPart[2, 5] = 0; // leftLeg

//Turn Var
turnMaxTimer = room_speed * 3;
turnTimer = irandom(robotSpeed);
isActive = false;

//Combat Var
win = false;