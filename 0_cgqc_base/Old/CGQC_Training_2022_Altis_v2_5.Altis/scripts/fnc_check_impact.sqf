private ["_camera", "_position", "_offsetVector"];

if (Projectile_Impact_Aux Distance [0,0,0] > 500) Then
{
	_position = getPosATL Projectile_Impact_Aux;
	
	_offsetVector = _position vectorFromTo getPosATL player;
	_offsetVector set [2, 0.0];
	_offsetVector = _offsetVector vectorMultiply 4;
	_offsetVector set [2, 1.0];
	
	_position = _position vectorAdd _offsetVector;
	
	_camera = "Camera" CamCreate _position;
	_camera CameraEffect ["INTERNAL", "BACK"];
	_camera CamSetFOV 0.7;
	ShowCinemaBorder False;
	_camera CamSetTarget Projectile_Impact_Aux;
	_camera CamCommit 0;
	Sleep 5.0;
	_camera CameraEffect ["TERMINATE", "BACK"];
	CamDestroy _camera;
};
