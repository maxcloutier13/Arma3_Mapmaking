[] spawn { sleep 1;
	[laptop_intel_2] call BIS_fnc_initIntelObject;
	if (isServer) then 
	{ 
	// Diary picture: 
	laptop_intel_2 setVariable [ 
	"RscAttributeDiaryRecord_texture", 
	"secret_2.paa", // Path to picture 
	true 
	]; 
	
	// Diary Title and Description: 
	[ 
	laptop_intel_2, 
	"RscAttributeDiaryRecord", 
	["Message": Salut Jackob, on t'attent pour faire la livraison a la ferme des Waysons"] // Array in format [Title, Description] 
	] call BIS_fnc_setServerVariable; 
	
	// Diary entry shared with (follows BIS_fnc_MP target rules): 
	laptop_intel_2 setVariable ["recipients", west, true]; 
	
	// Sides that can interact with the intel object: 
	laptop_intel_2 setVariable ["RscAttributeOwners", [west], true]; 
	};
};