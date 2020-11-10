//=============================================================================
// Nanu Fucking Nanu; is a GameType that is considered above HoE by 1 level
// Made by Vel-San @ https://steamcommunity.com/id/Vel-San/
//=============================================================================

class KFNFN extends Mutator Config(NanuConfig);

// Config Vars
var() config bool bDebug;
var() config int iStartingCash;

// Normal Vars
var NFNGameType NFNGT;

// Initialize
function PostBeginPlay()
{
	NFNGT = NFNGameType(Level.Game);
	SetTimer(0.1, false);
}

// Timer
function Timer()
{
	SaveConfig();
	StartingCash(iStartingCash);
}

// Change Starting Cash (Regardless of Difficulty!)
function StartingCash(optional int StartingCash)
{
	if(bDebug){
		MutLog("-----|| DEBUG - Starting Cash changed to: " $StartingCash$ " ||-----");
	}
	NFNGT.StartingCash = StartingCash;
}

function TimeStampLog(coerce string s)
{
  log("["$Level.TimeSeconds$"s]" @ s, 'NFN');
}

function MutLog(string s)
{
  log(s, 'NFN');
}

defaultproperties{

  // Mandatory Vars
  GroupName = "KF-NFN"
  FriendlyName = "Nanu Fucking Nanu - v1.1"
  Description = "Sick of lame HoE? NFN GameType is here for you! Not for the faint hearted ;D | Made by Vel-San, Tested & Optimized by Cronus & #Chief"
}