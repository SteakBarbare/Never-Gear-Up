//Globals Stats



robotSpeed = 3;
robotDodge = 30;
robotDamage = 15;
dead = false;

persistent = true;





update = false;
diceDodge = 0;
//activate

activate = false;

xOriginal = 216;

damage = false;

dice = 0;

deathSound = true;

haveDodge = false;


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

robotPart[1, 0] = "Destroyer"; // Head
robotPart[1, 1] = "Destroyer"; // Body
robotPart[1, 2] = "Destroyer"; // rightArm
robotPart[1, 3] = "Destroyer"; // leftArm
robotPart[1, 4] = "Destroyer"; // rightLeg
robotPart[1, 5] = "Destroyer"; // leftLeg

//Parts --- 2 = modifier

robotPart[2, 0] = 20; // Head
robotPart[2, 1] = 20; // Body
robotPart[2, 2] = 5; // rightArm
robotPart[2, 3] = 5; // leftArm
robotPart[2, 4] = 2; // rightLeg
robotPart[2, 5] = 2; // leftLeg

//Life Parts --- 3 = Max Life
robotPart[3, 0] = 20; // Head
robotPart[3, 1] = 40; // Body
robotPart[3, 2] = 30; // rightArm
robotPart[3, 3] = 30; // leftArm
robotPart[3, 4] = 30; // rightLeg
robotPart[3, 5] = 30; // leftLeg



//life calcul
robotLifeMax = 100 + robotPart[3, 0]/2 + robotPart[3, 1]/2 + robotPart[3, 2]/2 + robotPart[3, 3]/2 + robotPart[3, 4]/2 + robotPart[3, 5]/2;
robotLife = robotLifeMax;
robotNewLife = robotLife;

speedBonus = 0;
dodgeBonus = 0;
damageBonus = 0;

var thisRobot = instance_find(objPj, 0).id;

scrStatsUpdate(thisRobot)

//Turn Var
turnMaxTimer = room_speed * 3;
turnTimer = irandom(robotSpeed);
robotNewTimer = turnTimer;
isActive = false;

//Combat Var
win = false;
isBroken = false;
targetedPart = 0;
damageTaken = 0;
isCritical = false;

// Fx Var
fxGenerated = false;
flash = 0;

// Shop Var
money = 100;

// Consumables
overclocked = 0;
redButton = 0;
oilRecharge = 0;
