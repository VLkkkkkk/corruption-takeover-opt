function onCreate()

  makeLuaSprite('bg', 'BG/winter/bg', -600, -300);
  setScrollFactor('bg', 0.7, 0.7);
  scaleLuaSprite('bg', 2, 2);
  addLuaSprite('bg', false);

makeAnimatedLuaSprite('Boppers', 'BG/winter/Boppers', -100, 20);
addAnimationByPrefix('Boppers', 'Boppers', 'Upper Crowd Bob', 24, true);  
scaleLuaSprite('Boppers', 1.6, 1.6);
setScrollFactor('Boppers', 0.7, 0.7);
objectPlayAnimation('Boppers', 'Boppers', true)
addLuaSprite('Boppers', false);

  makeLuaSprite('stairs', 'BG/winter/stairs', -500, -100);
  setScrollFactor('stairs', 0.7, 0.7);
  scaleLuaSprite('stairs', 2, 2);
  addLuaSprite('stairs', false);

  makeLuaSprite('snow', 'BG/winter/snow', -600, 600);
  setScrollFactor('snow', 1, 1);
  scaleLuaSprite('snow', 2, 3);
  addLuaSprite('snow', false);

makeAnimatedLuaSprite('DownBoppers', 'BG/winter/DownBoppers', 1100, 200);
addAnimationByPrefix('DownBoppers', 'Boppers1', 'Second Level Boppers', 24, true);  
objectPlayAnimation('DownBoppers', 'DownBoppers', true)
scaleLuaSprite('DownBoppers', 2, 2);
addLuaSprite('DownBoppers', false);

makeAnimatedLuaSprite('DarnellSanta', 'BG/winter/DarnellSanta', -250, 50);
addAnimationByPrefix('DarnellSanta', 'DarnellSanta', 'Bottom Level Boppers', 24, true);  
objectPlayAnimation('DarnellSanta', 'DarnellSanta', true)
scaleLuaSprite('DarnellSanta', 2, 2);
addLuaSprite('DarnellSanta', false);

makeLuaSprite('pantalla', '', -1000, -1000)
makeGraphic('pantalla', screenWidth*3, screenHeight*3,'000000')
setProperty('pantalla.alpha', 0)
addLuaSprite('pantalla', false)

makeLuaSprite('corruptvignette', 'BG/winter/corruptvignette', 0, 0);
setLuaSpriteScrollFactor('corruptvignette', 0, 0);
addLuaSprite('corruptvignette', true);
setObjectCamera('corruptvignette', 'other');
scaleLuaSprite('corruptvignette', 2, 1.9);
setProperty('corruptvignette.alpha', 0);

makeLuaSprite('corruptvignette1', 'BG/winter/corruptvignette1', 0, 0);
setLuaSpriteScrollFactor('corruptvignette1', 0, 0);
addLuaSprite('corruptvignette1', true);
setObjectCamera('corruptvignette1', 'other');
scaleLuaSprite('corruptvignette1', 2, 1.9);
setProperty('corruptvignette1.alpha', 0);

makeLuaSprite('corruptvignette3', 'BG/winter/corruptvignette3', 0, 0);
setLuaSpriteScrollFactor('corruptvignette3', 0, 0);
addLuaSprite('corruptvignette3', true);
setObjectCamera('corruptvignette3', 'other');
scaleLuaSprite('corruptvignette3', 2, 1.9);
setProperty('corruptvignette3.alpha', 0);

makeLuaSprite('frase1', 'BG/winter/phrase1', 320, 300);
setLuaSpriteScrollFactor('frase1', 0, 0);
addLuaSprite('frase1', false);
setObjectCamera('frase1', 'other');
scaleLuaSprite('frase1', 1.25, 1.25);
setProperty('frase1.alpha', 0);

makeLuaSprite('frase2', 'BG/winter/phrase2', 260, 320);
setLuaSpriteScrollFactor('frase2', 0, 0);
addLuaSprite('frase2', false);
setObjectCamera('frase2', 'other');
scaleLuaSprite('frase2', 0.8, 0.8);
setProperty('frase2.alpha', 0);

makeLuaSprite('frase3', 'BG/winter/phrase3', 240, 310);
setLuaSpriteScrollFactor('frase3', 0, 0);
addLuaSprite('frase3', false);
setObjectCamera('frase3', 'other');
scaleLuaSprite('frase3', 0.8, 0.8);
setProperty('frase3.alpha', 0);

makeLuaSprite('frase4', 'BG/winter/phrase4', 0, 50);
setLuaSpriteScrollFactor('frase4', 0, 0);
addLuaSprite('frase4', false);
setObjectCamera('frase4', 'other');
scaleLuaSprite('frase4', 0.8, 0.8);
setProperty('frase4.alpha', 0);

makeLuaSprite('frase5', 'BG/winter/phrase5', 700, 600);
setLuaSpriteScrollFactor('frase5', 0, 0);
addLuaSprite('frase5', false);
setObjectCamera('frase5', 'other');
scaleLuaSprite('frase5', 0.9, 0.9);
setProperty('frase5.alpha', 0);

makeLuaSprite('frase6', 'BG/winter/phrase6', 400, 300);
setLuaSpriteScrollFactor('frase6', 0, 0);
addLuaSprite('frase6', false);
setObjectCamera('frase6', 'other');
scaleLuaSprite('frase6', 1.25, 1.25);
setProperty('frase6.alpha', 0);

setProperty('defaultCamZoom', 0.8) 
end

function onEvent(name,value1,value2)
if name == 'Asbel' then
if value1 == 'decepcion' then
doTweenAlpha('frase1', 'frase1', 1, 1.5, 'linear')
end
if value1 == 'frase2' then
doTweenAlpha('corruptvignette1', 'corruptvignette1', 0.3, 1, 'linear')
doTweenAlpha('frase2', 'frase2', 1, 1, 'linear')
end
if value1 == 'frase3' then
doTweenAlpha('corruptvignette1', 'corruptvignette1', 1, 1, 'linear')
doTweenAlpha('frase3', 'frase3', 1, 1, 'linear')
end
if value1 == 'oscuro' then
doTweenAlpha('pantalla', 'pantalla', 1, 0.5, 'linear')
doTweenAlpha('gf', 'gf', 0, 0.5, 'linear')
doTweenAlpha('frase4', 'frase4', 1, 1, 'linear')
end
if value1 == 'frase5' then
doTweenAlpha('frase5', 'frase5', 1, 1, 'linear')
end
if value1 == 'normal' then
doTweenAlpha('corruptvignette1', 'corruptvignette1', 0, 0.5, 'linear')
doTweenAlpha('corruptvignette', 'corruptvignette', 0, 0.5, 'linear')
doTweenAlpha('pantalla', 'pantalla', 0, 0.5, 'linear')
doTweenAlpha('gf', 'gf', 1, 0.5, 'linear')
end
if value1 == 'vig3' then
doTweenAlpha('corruptvignette3', 'corruptvignette3', 1, 1.5, 'linear')
end
if value1 == 'duerme' then
doTweenAlpha('frase6', 'frase6', 1, 1.5, 'linear')
end
end
end

function onBeatHit()
if curBeat % 0.5 == 0 then
health = getProperty('health')
setProperty('health', health- 0.020);
end
end 

function onTweenCompleted(tag, loops, loopsLeft)
if tag == 'frase1' then
doTweenAlpha('frase10', 'frase1', 0, 1.5, 'linear')
doTweenAlpha('corruptvignette', 'corruptvignette', 1, 1.5, 'linear')
end
if tag == 'frase2' then
doTweenAlpha('frase20', 'frase2', 0, 1.5, 'linear')
doTweenAlpha('corruptvignette', 'corruptvignette', 2, 1.5, 'linear')
end
if tag == 'frase3' then
doTweenAlpha('frase30', 'frase3', 0, 1.5, 'linear')
end
if tag == 'frase4' then
doTweenAlpha('frase40', 'frase4', 0, 1.5, 'linear')
doTweenX("frase4x", "frase4", -1000, 1.5, "linear")   
end
if tag == 'frase5' then
doTweenAlpha('frase50', "frase5", 0, 1.5, "linear")  
doTweenX("frase5x", "frase5", 1000, 1.5, "linear")    
end
if tag == 'frase6' then
doTweenAlpha('frase69', 'frase6', 0, 1.5, 'linear')
end
if tag == 'frase10' then
removeLuaSprite('frase1')
end
if tag == 'frase20' then
removeLuaSprite('frase2')
end
if tag == 'frase30' then
removeLuaSprite('frase3')
end
if tag == 'frase40' then
removeLuaSprite('frase4')
end
if tag == 'frase50' then
removeLuaSprite('frase5')
end
end