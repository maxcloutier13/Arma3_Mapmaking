// Config for putting items down from the editor
// Guns -----------------------------------------------------------------------------------------------------
class Pistol_Base_F;
class Weapon_cgqc_gun_p99_wood : Pistol_Base_F
{
    scope = 2;
    scopeCurator = 2;
    author = "silent1";
    displayName = "CGQC P99 Woodland";
    editorCategory = "EdCat_Weapons";
    editorSubcategory = "EdSubcat_Pistols";
    vehicleClass = "WeaponsHandguns";
    class TransportWeapons
    {
        class cgqc_gun_p99_wood
        {
            weapon = "cgqc_gun_p99_wood";
            count = 1;
        };
    };
    class TransportMagazines
    {
        class 16Rnd_9x21_Mag
        {
            magazine = "16Rnd_9x21_Mag";
            count = 1;
        };
    };
};

class Weapon_Base_F;
class Weapon_cgqc_gun_spar17_tremblay : Weapon_Base_F
{
    scope = 2;
    scopeCurator = 2;
    author = "silent1";
    displayName = "CGQC HK417 Le Tremblay";
    editorCategory = "EdCat_Weapons";
    editorSubcategory = "EdSubcat_AssaultRifles";
    vehicleClass = "WeaponsPrimary";
    class TransportWeapons
    {
        class cgqc_gun_spar17_tremblay
        {
            weapon = "cgqc_gun_spar17_tremblay";
            count = 1;
        };
    };
    class TransportMagazines
    {
        class 20Rnd_762x51_Mag
        {
            magazine = "20Rnd_762x51_Mag";
            count = 1;
        };
    };
};

class Weapon_cgqc_gun_spar17_canpat : Weapon_Base_F
{
    scope = 2;
    scopeCurator = 2;
    author = "silent1";
    displayName = "CGQC HK417 Cadpat";
    editorCategory = "EdCat_Weapons";
    editorSubcategory = "EdSubcat_AssaultRifles";
    vehicleClass = "WeaponsPrimary";
    class TransportWeapons
    {
        class cgqc_gun_spar17_canpat
        {
            weapon = "cgqc_gun_spar17_canpat";
            count = 1;
        };
    };
    class TransportMagazines
    {
        class 20Rnd_762x51_Mag
        {
            magazine = "20Rnd_762x51_Mag";
            count = 1;
        };
    };
};

class Weapon_cgqc_gun_spar17_wood : Weapon_Base_F
{
    scope = 2;
    scopeCurator = 2;
    author = "silent1";
    displayName = "CGQC HK417 Woodland";
    editorCategory = "EdCat_Weapons";
    editorSubcategory = "EdSubcat_AssaultRifles";
    vehicleClass = "WeaponsPrimary";
    class TransportWeapons
    {
        class cgqc_gun_spar17_wood
        {
            weapon = "cgqc_gun_spar17_wood";
            count = 1;
        };
    };
    class TransportMagazines
    {
        class 20Rnd_762x51_Mag
        {
            magazine = "20Rnd_762x51_Mag";
            count = 1;
        };
    };
};

// Headgear -----------------------------------------------------------------------------------------------------
class Headgear_Base_F;
class Headgear_cgqc_beret_green : Headgear_Base_F
{
    scope = 2;
    scopeCurator = 2;
    author = "silent1";
    displayName = "CGQC Beret vert";
    editorCategory = "EdCat_Equipment";
    editorSubcategory = "EdSubcat_Hats";
    vehicleClass = "ItemsHeadgear";
    model = "\A3\Weapons_F\DummyCap.p3d";
    class TransportItems
    {
        class cgqc_beret_green
        {
            name = "cgqc_beret_green";
            count = 1;
        };
    };
};

class Headgear_cgqc_beret_blue : Headgear_Base_F
{
    scope = 2;
    scopeCurator = 2;
    author = "silent1";
    displayName = "CGQC Beret bleu";
    editorCategory = "EdCat_Equipment";
    editorSubcategory = "EdSubcat_Hats";
    vehicleClass = "ItemsHeadgear";
    model = "\A3\Weapons_F\DummyCap.p3d";
    class TransportItems
    {
        class cgqc_beret_blue
        {
            name = "cgqc_beret_blue";
            count = 1;
        };
    };
};

class Headgear_cgqc_cap_green : Headgear_Base_F
{
    scope = 2;
    scopeCurator = 2;
    author = "silent1";
    displayName = "CGQC Casquette verte";
    editorCategory = "EdCat_Equipment";
    editorSubcategory = "EdSubcat_Hats";
    vehicleClass = "ItemsHeadgear";
    model = "\A3\Weapons_F\DummyCap.p3d";
    class TransportItems
    {
        class cgqc_cap_green
        {
            name = "cgqc_cap_green";
            count = 1;
        };
    };
};

// Helicopter helmets --------------------------------------------------------------------------------
class Headgear_cgqc_helmet_cloutier : Headgear_Base_F
{
    scope = 2;
    scopeCurator = 2;
    author = "silent1";
    displayName = "CGQC Cloutier Samurai";
    editorCategory = "EdCat_Equipment";
    editorSubcategory = "EdSubcat_Hats";
    vehicleClass = "ItemsHeadgear";
    model = "\A3\Weapons_F\DummyCap.p3d";
    class TransportItems
    {
        class cgqc_helmet_cloutier
        {
            name = "cgqc_helmet_cloutier_samurai";
            count = 1;
        };
    };
};

class Headgear_cgqc_helmet_crew_cloutier_samurai : Headgear_Base_F
{
    scope = 2;
    scopeCurator = 2;
    author = "silent1";
    displayName = "CGQC Cloutier Samurai Full";
    editorCategory = "EdCat_Equipment";
    editorSubcategory = "EdSubcat_Hats";
    vehicleClass = "ItemsHeadgear";
    model = "\A3\Weapons_F\DummyCap.p3d";
    class TransportItems
    {
        class cgqc_helmet_crew_cloutier_samurai
        {
            name = "cgqc_helmet_crew_cloutier_samurai";
            count = 1;
        };
    };
};

class Headgear_cgqc_helmet_heli_green : Headgear_Base_F
{
    scope = 2;
    scopeCurator = 2;
    author = "silent1";
    displayName = "CGQC Heli Vert";
    editorCategory = "EdCat_Equipment";
    editorSubcategory = "EdSubcat_Hats";
    vehicleClass = "ItemsHeadgear";
    model = "\A3\Weapons_F\DummyCap.p3d";
    class TransportItems
    {
        class cgqc_helmet_heli_green
        {
            name = "cgqc_helmet_heli_green";
            count = 1;
        };
    };
};

class Headgear_cgqc_helmet_crew_green : Headgear_Base_F
{
    scope = 2;
    scopeCurator = 2;
    author = "silent1";
    displayName = "CGQC Heli Vert Full";
    editorCategory = "EdCat_Equipment";
    editorSubcategory = "EdSubcat_Hats";
    vehicleClass = "ItemsHeadgear";
    model = "\A3\Weapons_F\DummyCap.p3d";
    class TransportItems
    {
        class cgqc_helmet_crew_green
        {
            name = "cgqc_helmet_crew_green";
            count = 1;
        };
    };
};

class Headgear_cgqc_helmet_heli_black : Headgear_Base_F
{
    scope = 2;
    scopeCurator = 2;
    author = "silent1";
    displayName = "CGQC Heli Noir";
    editorCategory = "EdCat_Equipment";
    editorSubcategory = "EdSubcat_Hats";
    vehicleClass = "ItemsHeadgear";
    model = "\A3\Weapons_F\DummyCap.p3d";
    class TransportItems
    {
        class cgqc_helmet_heli_black
        {
            name = "cgqc_helmet_heli_black";
            count = 1;
        };
    };
};

class Headgear_cgqc_helmet_crew_black : Headgear_Base_F
{
    scope = 2;
    scopeCurator = 2;
    author = "silent1";
    displayName = "CGQC Heli Noir Full";
    editorCategory = "EdCat_Equipment";
    editorSubcategory = "EdSubcat_Hats";
    vehicleClass = "ItemsHeadgear";
    model = "\A3\Weapons_F\DummyCap.p3d";
    class TransportItems
    {
        class cgqc_helmet_crew_black
        {
            name = "cgqc_helmet_crew_black";
            count = 1;
        };
    };
};

class Headgear_cgqc_helmet_heli_wood : Headgear_Base_F
{
    scope = 2;
    scopeCurator = 2;
    author = "silent1";
    displayName = "CGQC Heli Woodland";
    editorCategory = "EdCat_Equipment";
    editorSubcategory = "EdSubcat_Hats";
    vehicleClass = "ItemsHeadgear";
    model = "\A3\Weapons_F\DummyCap.p3d";
    class TransportItems
    {
        class cgqc_helmet_heli_wood
        {
            name = "cgqc_helmet_heli_wood";
            count = 1;
        };
    };
};

class Headgear_cgqc_helmet_crew_wood : Headgear_Base_F
{
    scope = 2;
    scopeCurator = 2;
    author = "silent1";
    displayName = "CGQC Heli Woodland Full";
    editorCategory = "EdCat_Equipment";
    editorSubcategory = "EdSubcat_Hats";
    vehicleClass = "ItemsHeadgear";
    model = "\A3\Weapons_F\DummyCap.p3d";
    class TransportItems
    {
        class cgqc_helmet_crew_wood
        {
            name = "cgqc_helmet_crew_wood";
            count = 1;
        };
    };
};

class Headgear_cgqc_helmet_villeneuve : Headgear_Base_F
{
    scope = 2;
    scopeCurator = 2;
    author = "silent1";
    displayName = "CGQC Villeneuve Noir";
    editorCategory = "EdCat_Equipment";
    editorSubcategory = "EdSubcat_Hats";
    vehicleClass = "ItemsHeadgear";
    model = "\A3\Weapons_F\DummyCap.p3d";
    class TransportItems
    {
        class cgqc_helmet_villeneuve
        {
            name = "cgqc_helmet_villeneuve";
            count = 1;
        };
    };
};

class Headgear_cgqc_helmet_crew_villeneuve : Headgear_Base_F
{
    scope = 2;
    scopeCurator = 2;
    author = "silent1";
    displayName = "CGQC Villeneuve Noir Full";
    editorCategory = "EdCat_Equipment";
    editorSubcategory = "EdSubcat_Hats";
    vehicleClass = "ItemsHeadgear";
    model = "\A3\Weapons_F\DummyCap.p3d";
    class TransportItems
    {
        class cgqc_helmet_crew_villeneuve
        {
            name = "cgqc_helmet_crew_villeneuve";
            count = 1;
        };
    };
};

class Headgear_cgqc_helmet_audi : Headgear_Base_F
{
    scope = 2;
    scopeCurator = 2;
    author = "silent1";
    displayName = "CGQC Audi Noir";
    editorCategory = "EdCat_Equipment";
    editorSubcategory = "EdSubcat_Hats";
    vehicleClass = "ItemsHeadgear";
    model = "\A3\Weapons_F\DummyCap.p3d";
    class TransportItems
    {
        class cgqc_helmet_audi
        {
            name = "cgqc_helmet_audi";
            count = 1;
        };
    };
};

class Headgear_cgqc_helmet_crew_audi : Headgear_Base_F
{
    scope = 2;
    scopeCurator = 2;
    author = "silent1";
    displayName = "CGQC Audi Noir Full";
    editorCategory = "EdCat_Equipment";
    editorSubcategory = "EdSubcat_Hats";
    vehicleClass = "ItemsHeadgear";
    model = "\A3\Weapons_F\DummyCap.p3d";
    class TransportItems
    {
        class cgqc_helmet_crew_audi
        {
            name = "cgqc_helmet_crew_audi";
            count = 1;
        };
    };
};