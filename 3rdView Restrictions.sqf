if (!isDedicated) then {




_staticweapon = ["StaticGrenadeLauncher","StaticMGWeapon","StaticATWeapon"];
_canonmortor = ["Staticmortor","StaticCannon"];
_b = behaviour player;

waitUntil {!isNull (findDisplay 46)};


	if ( (difficultyOption "thirdPersonView")isEqualTo 1) then
	{
		while {true} do {

			waitUntil {cameraView == "EXTERNAL" || cameraView == "GROUP"};

			if  (((vehicle player) == player) &&
        (!((animationState player) isEqualTo "amovpsitmstpslowwrfldnon")) 
        ) then {
				player switchCamera "INTERNAL";

			};
			sleep 0.1;

      if  (((vehicle player) == player) && ((underwater player)&&(eyePos player select 2 < 0.5))) then {
        player switchCamera "INTERNAL";
      };
      sleep 0.1;

			if (((vehicle player)isKindOf "Car") && (speed (vehicle player)) >= 0) then {
				(vehicle player) switchCamera "Internal";
			};
			sleep 0.1;

			if (((vehicle player)isKindOf "Tank") && (speed (vehicle player)) >= 0) then {
				(vehicle player) switchCamera "Internal";
			};
			sleep 0.1;

			if (({vehicle player isKindOf _x} count _canonmortor > 0) && (speed (vehicle player)) >= 20) then {
				(vehicle player) switchCamera "Internal";
			};
			sleep 0.1;

			if ({vehicle player isKindOf _x} count _staticweapon > 0)  then {
				(vehicle player) switchCamera "Internal";
			};
			sleep 0.1;



      if (( vehicle player) isKindOf "Helicopter" && (getPosVisual (vehicle player) select 2) > 3) then {
				(vehicle player) switchCamera "Internal";
			};
            sleep 0.1;

      if ((vehicle player) isKindOf "Plane" && (speed (vehicle player)) >= 60) then {
				(vehicle player) switchCamera "Internal";
			};
            sleep 0.1;

			if (((vehicle player)isKindOf "Ship") && (speed (vehicle player)) >= 3) then {
				(vehicle player) switchCamera "Internal";
			};
			sleep 0.1;




		};
	};

};
