// Holster weapon
sleep 1;
player action ['SwitchWeapon', player, player, 100];
sleep 5;
// set rank according to player name prefix
_name = name player;
_prefix = _name select[0, 4];
// hint format ["%1 -Rank: %2", _name, _prefix];
switch (_prefix) do
{
	case "Sdt.": {
		player setRank "PRIVATE";
		hint "Bonsoir Soldat!";
	};
	case "Cpl.": {
		player setRank "CORPORAL";
		hint "Bonsoir Caporal!";
	};
	case "CplC": {
		player setRank "CORPORAL";
		hint "Bonsoir Caporal-Chef!";
	};
	case "Sgt.": {
		player setRank "SERGEANT";
		hint "Bonsoir Sergeant!";
	};
	case "Adju": {
		player setRank "SERGEANT";
		hint "Bonsoir Adjudent!";
	};
	case "SLt.": {
		player setRank "LIEUTENANT";
		hint "Bonsoir Sous-lieutenant!";
	};
	case "Lt. ": {
		player setRank "LIEUTENANT";
		hint "Bonsoir Lieuntenant!";
	};
	case "Capt": {
		player setRank "CAPTAIN";
		hint "Y va comment Capitaine Tremblay?";
	};
	case "Maj.": {
		player setRank "MAJOR";
		hint "Bonsoir Major!";
	};
	case "LCol": {
		player setRank "COLONEL";
		hint "Sup Fréchette?";
	};
	case "Col.": {
		player setRank "COLONEL";
		hint "Yo Audi!";
	};
	default {
		hint "Rank failed. Something's wrong"
	};
};