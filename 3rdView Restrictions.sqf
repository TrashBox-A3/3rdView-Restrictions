///Script by Rodeostar42///

if (!isDedicated) then {

//固定機銃とか//
_staticweapon = ["StaticGrenadeLauncher","StaticMGWeapon","StaticATWeapon"];
//迫撃砲とか//
_canonmortor = ["Staticmortor","StaticCannon"];



	waitUntil {!isNull (findDisplay 46)};



	if ( (difficultyOption "thirdPersonView")isEqualTo 1) then
	{
		while {true} do {

			waitUntil {cameraView == "EXTERNAL" || cameraView == "GROUP"};

  //歩兵//
			if  (((vehicle player) == player) && (speed ( player)) >= 5) then {
				player switchCamera "INTERNAL";
			};
			sleep 0.1;

  //車//
			if (((vehicle player)isKindOf "Car") && (speed (vehicle player)) >= 0) then {
				(vehicle player) switchCamera "Internal";
			};
			sleep 0.1;

  //戦車//
			if (((vehicle player)isKindOf "Tank") && (speed (vehicle player)) >= 1) then {
				(vehicle player) switchCamera "Internal";
			};
			sleep 0.1;

  //迫撃砲//
			if (({vehicle player isKindOf _x} count _canonmortor > 0) && (speed (vehicle player)) >= 20) then {
				(vehicle player) switchCamera "Internal";
			};
			sleep 0.1;

  //固定機銃//
			if ({vehicle player isKindOf _x} count _staticweapon > 0)  then {
				(vehicle player) switchCamera "Internal";
			};
			sleep 0.1;


  //ヘリコプター//
      if (( vehicle player) isKindOf "Helicopter" && (getPosVisual (vehicle player) select 2) > 5) then {
				(vehicle player) switchCamera "Internal";
			};
            sleep 0.1;

  //固定翼機//
      if ((vehicle player) isKindOf "Plane" && (speed (vehicle player)) >= 60) then {
				(vehicle player) switchCamera "Internal";
			};
            sleep 0.1;

  //船//
			if (((vehicle player)isKindOf "Ship") && (speed (vehicle player)) >= 20) then {
				(vehicle player) switchCamera "Internal";
			};
			sleep 0.1;




		};
	};

};
