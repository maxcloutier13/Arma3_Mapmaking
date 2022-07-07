---- TODO ---------------------------------------------------------------------------------------------
    - 3D icon on prefix cgqc_arsenal
    - More screen stuff
    - Triggers for phases (Intro-Briefing-Loadout-Operation)

---- Done ---------------------------------------------------------------------------------------------
    - Imported/sorted default CGQC stuf.



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
    3d floating icon
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


