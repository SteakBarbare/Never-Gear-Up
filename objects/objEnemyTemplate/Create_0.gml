//Globals Stats

robotSpeed = 1;
robotDodge = 5;
robotDamage = 10;
dead = false;

robot = id;




diceDodge = 0;
update = false;

//activate

activate = false;

xOriginal = x;

damage = false;

dice = 0;

haveDodge = false;



animationSet = false;
//isDashing
dash = false;
hsp = 0;
animTime = 0;

//pause
combat = false;
victorySound = false;

srcEquipGen(robot);

//life calcul
robotLifeMax = 100 + robotPart[0, 0]/2 + robotPart[0, 1]/2 + robotPart[0, 2]/2 + robotPart[0, 3]/2 + robotPart[0, 4]/2 + robotPart[0, 5]/2;
robotLife = robotLifeMax;
robotNewLife = robotLife;

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