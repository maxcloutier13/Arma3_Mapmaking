private["_man","_stopVoices","_magazines","_items","_aItems","_r","_r2","_vests","_uniforms","_uniform","_masks","_goggles","_hats","_headGear"];
uiSleep(random 0.3);
if!(local _this)exitWith{};

_this disableAI"RADIOPROTOCOL";

_magazines=magazines _this;
_items=items _this;
_aItems=assignedItems _this;
removeAllItems _this;
removeHeadgear _this;
removeVest _this;
removeUniform _this;
removeGoggles _this;

_r=0;
_r2=0;
_vests=[
"V_HarnessO_brn",
"V_HarnessO_gry",
"V_HarnessO_brn",
"V_HarnessO_gry",
"V_TacVest_blk",
"V_TacVest_brn",
"V_TacVest_camo",
"V_TacVest_khk",
"V_TacVest_oli",
"V_TacChestrig_cbr_F",
"V_TacChestrig_grn_F",
"V_TacChestrig_oli_F"
];

_this addVest(selectRandom _vests);

_uniforms=[
"U_B_CombatUniform_mcam_tshirt",
"U_I_G_resistanceLeader_F",
"U_BG_Guerilla2_1",
"U_BG_Guerilla2_3",
"U_C_Journalist",
"U_B_survival_uniform",
"U_I_G_Story_Protagonist_F",
"U_I_C_Soldier_Bandit_3_F",
"U_I_C_Soldier_Para_2_F",
"U_I_C_Soldier_Para_3_F",
"U_I_C_Soldier_Para_1_F",
"DSF_SAA_BDU",
"DSF_SAA_BDU2",
"DSF_SAA_BDU_rolled",
"DSF_GME_BDU",
"DSF_GME_BDU2",
"DSF_GME_BDU_rolled",
//"DSF_ins_bdu_blk",
"DSF_dishda_black"
];
_uniform="";
while{((uniform _this)=="")}do{
	_uniform=selectRandom _uniforms;
	_this forceAddUniform _uniform;
	uiSleep 0.1;
};

{_this addItem _x}forEach _items;
{_this addMagazine _x}forEach _magazines;
{_this assignItem _x}forEach _aItems;
_this unassignItem "NVGoggles_OPFOR";
_this removeItem "NVGoggles_OPFOR";

sleep .3;
_this enableAI"RADIOPROTOCOL";

_masks=[];
_goggles=[];
_hats=[];
_headGear=[];
_r=(random 100);
_r2=(random 100);

// SHEMAGH(headgear)
if(_r<20)exitWith{
	_headGear=["H_Shemag_olive","H_ShemagOpen_tan","H_ShemagOpen_khk"];
	_this addHeadgear(selectRandom _headgear);
};

// SHEMAGH(goggles)
if(_r<40)exitWith{
	_goggles=["DSF_shemag_red","DSF_shemag_des","DSF_shemag_bw","DSF_shemag_bw","DSF_shemag_bw","DSF_shemag_black","DSF_shemag_green","DSF_shemag_black","DSF_shemag_green","DSF_shemag_black","DSF_shemag_green","DSF_shemag_black","DSF_shemag_green"];
	_this addGoggles(selectRandom _goggles);
	if(_r2<60) then {
		_hats=["DSF_headband_islamist"];
		_this addHeadgear(selectRandom _hats);
	};
};

// ADD HAT
if(_r<70)exitWith{
	_hats=[
	"DSF_headband_isis",
	"H_Cap_blk",
	"H_Cap_grn",
	"H_Cap_oli",
	"H_Bandanna_khk",
	"H_Bandanna_gry"
	];
	_this addHeadgear(selectRandom _hats);
};

// ADD BALACLAVA(goggle)
if(_r<90)exitWith{
	_masks=["G_Balaclava_oli","G_Balaclava_blk","G_Balaclava_blk","G_Balaclava_blk"];
	_this addGoggles(selectRandom _masks);
	if(_r2<60) then {
		_hats=["DSF_headband_islamist"];
		_this addHeadgear(selectRandom _hats);
	};
};

_this addHeadgear "DSF_headband_islamist";
if!(isClass(configFile>>"cfgPatches">>"t1am"))exitWith{};while{TRUE}do{{_x setVariable["T1AM_AllowUnit",FALSE,TRUE]}forEach(allUnits+vehicles);uiSleep 15;};