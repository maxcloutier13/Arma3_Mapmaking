// Fade to black  
cutText ["", "BLACK FADED", 999];
titleText ["", "PLAIN"];
sleep 3;
titleFadeOut 2;
// Wake up with blur
"dynamicBlur" ppEffectEnable true;
"dynamicBlur" ppEffectAdjust [6];
"dynamicBlur" ppEffectCommit 0;
titleCut ["", "BLACK IN", 3];
"dynamicBlur" ppEffectAdjust [0.0];
"dynamicBlur" ppEffectCommit 2;