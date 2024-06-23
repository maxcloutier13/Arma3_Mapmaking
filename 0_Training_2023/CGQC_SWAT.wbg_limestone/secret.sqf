[] spawn { sleep 1;
	[laptop_intel] call BIS_fnc_initIntelObject;
	if (isServer) then 
	{ 
	// Diary picture: 
	laptop_intel setVariable [ 
	"RscAttributeDiaryRecord_texture", 
	"secret.paa", // Path to picture 
	true 
	]; 
	
	// Diary Title and Description: 
	[ 
	laptop_intel, 
	"RscAttributeDiaryRecord", 
	["Hey Dwayne, on a recus les armes que tes hommes ont demandé, j'espère que ca en vaut la peine vue les risques qu'on a du prendre pour emporter le tout a l'entrepot. Jean arrête pas de déconner avec son buildozer"] // Array in format [Title, Description] 
	] call BIS_fnc_setServerVariable; 
	
	// Diary entry shared with (follows BIS_fnc_MP target rules): 
	laptop_intel setVariable ["recipients", west, true]; 
	
	// Sides that can interact with the intel object: 
	laptop_intel setVariable ["RscAttributeOwners", [west], true]; 
	};
};

