//Globals Stats
robotLife = 100;
robotSpeed = 20;
robotDodge = 5;
robotDamage = 10;

//Parts Life
robotLifePart = [];
robotLifePart[0] = 20; // Head
robotLifePart[1] = 20; // Body
robotLifePart[2] = 20; // rightArm
robotLifePart[3] = 20; // leftArm
robotLifePart[4] = 20; // leftRight
robotLifePart[5] = 20; // rightLeg
robotLifePart[6] = 20; // leftLeg

//Turn Var
turnMaxTimer = room_speed * 3;
turnTimer = irandom(robotSpeed);
isActive = false;

//Combat Var
win = false;