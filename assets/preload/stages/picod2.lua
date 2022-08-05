function onCreate()

  makeLuaSprite('BG', 'BG/picod1/BG', -700, -500);
  setScrollFactor('BG', 1, 1);
  scaleLuaSprite('BG', 2, 2);
  addLuaSprite('BG', false);

makeAnimatedLuaSprite('limo', 'BG/picod2/limo', -1100, -1070);
addAnimationByPrefix('limo', 'limo', 'Limo Bop', 24, true);  
objectPlayAnimation('limo', 'limo', true)
scaleLuaSprite('limo', 3, 3);
addLuaSprite('limo', false);

  makeLuaSprite('BGUGH', 'BG/picod1/BGUGH', -700, -500);
  setScrollFactor('BGUGH', 1, 1);
  scaleLuaSprite('BGUGH', 2, 2);
  addLuaSprite('BGUGH', false);

makeAnimatedLuaSprite('SkidNeneStand', 'BG/picod2/SkidNeneStand', -380, 200);
addAnimationByPrefix('SkidNeneStand', 'SkidNeneStand', 'Nene Stand Idle', 24, true);  
addAnimationByPrefix('SkidNeneStand', 'SkidNeneStand2', 'Nene ALT Stand Idle', 24, true);  
addAnimationByPrefix('SkidNeneStand', 'SkidNeneStand3', 'Nene LAST Stand Idle', 24, true);  
addAnimationByPrefix('SkidNeneStand', 'SkidNeneStand4', 'Nene Worried Idle 3', 24, true);  
objectPlayAnimation('SkidNeneStand', 'SkidNeneStand', true)
scaleLuaSprite('SkidNeneStand', 1.4, 1.4);
addLuaSprite('SkidNeneStand', false);

makeAnimatedLuaSprite('limoF', 'BG/picod1/limoF', -800, -550);
addAnimationByPrefix('limoF', 'limoF', 'Limo Bop', 24, true);  
objectPlayAnimation('limoF', 'limoF', true)
scaleLuaSprite('limoF', 3, 3);
addLuaSprite('limoF', true);

makeAnimatedLuaSprite('fogthing', 'BG/picod1/fogthing', -1300, -1000);
addAnimationByPrefix('fogthing', 'fogthing', 'fog instancia 1', 24, true);  
objectPlayAnimation('fogthing', 'fogthing', true)
scaleLuaSprite('fogthing', 12, 12);
addLuaSprite('fogthing', true);

setProperty('defaultCamZoom', 0.65) 

makeLuaSprite('corruptvignette3', 'BG/winter/corruptvignette3', 0, 0);
setLuaSpriteScrollFactor('corruptvignette3', 0, 0);
addLuaSprite('corruptvignette3', true);
setObjectCamera('corruptvignette3', 'other');
scaleLuaSprite('corruptvignette3', 2, 1.9);
setProperty('corruptvignette3.alpha', 0);

doTweenAlpha('fog', 'fogthing', 0.5, 0.01, 'linear')
end

function onEvent(name,value1,value2)
if name == 'Asbel' then
if value1 == 'c1' then
objectPlayAnimation('SkidNeneStand', 'SkidNeneStand2', true)
BScreen()
end 
if value1 == 'c2' then
objectPlayAnimation('SkidNeneStand', 'SkidNeneStand3', true)
BScreen()
end 
if value1 == 'c3' then
objectPlayAnimation('SkidNeneStand', 'SkidNeneStand4', true)
BScreen()
end 
if value1 == 'c4' then
doTweenAlpha('corruptvignette3', 'corruptvignette3', 1, 3, 'linear')
end 
end 
if name == 'noteskinchangeBF' then
if value1 == 'notes_unable' then
cambio()
end
end
end

function BScreen()
cameraFlash('camGame', '000000', '2')
end	

function cambio()
for i = 0, getProperty('playerStrums.length')-1 do
setPropertyFromGroup('playerStrums', i, 'texture', 'notes_unable');
end
end