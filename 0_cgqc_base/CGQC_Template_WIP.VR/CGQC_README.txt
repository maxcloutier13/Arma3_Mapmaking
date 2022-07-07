---- Description des fichiers -----------------------------------------------------------------------------------------

- description.ext
    Description
        - auteur
        - loading screens
        - player count
        - respawn
        - garbage mng
    Grad fortification
    CHVD
    Grad persistence

- init.sqf
    Rearm triggers
    3d floating icons
    CGQC legacy Zeus mapping

- initPlayerLocal.sqf
    intro on join
    Grad persistence hook

- initServer.sqf
    dynamic groups
    adv towing
    adv sling
    ambient air
    initial variables
    custom ace fortify list

- onPlayerKilled.sqf
    save loadout

- onPlayerRespawn.sqf
    load loadout
    turn off stamina again in case

---- Description des Scripts -----------------------------------------------------------------------------------------
scripts/CGQC_Briefing.sqf
    Ajoute les items du briefing/diary

scripts/CGQC_Intro.sqf
    Visuel + information quand un joueur spawn in.


abientAir.sqf
fn_advancedSlingLoadingInit.sqf 
fn_advancedTowingInit.sqf 
HQ_no_fire.sqf 
my_trigger.sqf 
rearm.sqf 
rearmGround.sqf 


---- Ordre d'exécution des scripts d'initialisation---------------------------------------------------------------------------
Appliqué pour - Description
All - Fonction avec "recompile"
All - Fonction avec "preInit"
All - Init handler des objets
Server - initServer.sqf  - Contient les opération server-side only
Client - initPlayerLocal.sqf - Contient les opérations client-side only
Client (qui joue sur le serveur) - initPlayerServer.sqf 
All - Fonction avec "postInit"
All - init.sqf  - Contient les opérations mixtes server/client-side 

