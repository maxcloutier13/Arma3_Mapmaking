// Current soldier equipment
player_helmet_old = headgear player;
player_uniform_old = uniform player;
player_vest_old = vest player;
player_backpack_old = backpack player;
player_goggles_old = goggles player;
// Save inventory 
player_items_uniform = uniformItems player;
player_items_vest = vestItems player;
player_items_pack = backpackItems player;
// Delete old stuff 
removeHeadgear player;
removeUniform player;
removeVest player;
removeBackpack player;
removeGoggles player;