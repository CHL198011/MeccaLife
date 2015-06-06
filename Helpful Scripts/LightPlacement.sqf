_position = [-0.695, 2.2825, -0.355];
_veh = vehicle player;
_lightWhite = [255, 255, 255];
_brightnessHigh = 60;
_attenuation = [0.001, 3000, 0, 500000];

_flashes = 3;
_flashOn = 0.1;
_flashOff = 0.001;
_isLight = _this select 0;
_color = _this select 1;
_position = _this select 2;
light = "#lightpoint" createVehicleLocal getPos _veh;
light setLightBrightness 10;
light setLightAmbient [0,0,0];
light setLightAttenuation _attenuation;
light setLightIntensity 1000;
light setLightFlareSize 1;
light setLightFlareMaxDistance 150;
light setLightUseFlare true;
light setLightDayLight true;
light setLightColor _lightWhite;
light lightAttachObject [_veh, _position];