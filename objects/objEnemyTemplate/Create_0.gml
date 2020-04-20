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

xOriginal = 431;

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

// Shop var 
bounty = 0;

srcEquipGen(robot);

//life calcul
robotLifeMax = 100 + robotPart[3, 0]/2 + robotPart[3, 1]/2 + robotPart[3, 2]/2 + robotPart[3, 3]/2 + robotPart[3, 4]/2 + robotPart[3, 5]/2;
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

// Consumables Vars
speedBonus = 0;
damageBonus = 0;
dodgeBonus = 0;
