function onCreate()

  makeLuaSprite('BG', 'BG/picod1/BG', -700, -500);
  setScrollFactor('BG', 1, 1);
  scaleLuaSprite('BG', 2, 2);
  addLuaSprite('BG', false);

makeAnimatedLuaSprite('limo', 'BG/picod1/limo', -800, -550);
addAnimationByPrefix('limo', 'limo', 'Limo Bop', 24, true);  
objectPlayAnimation('limo', 'limo', true)
scaleLuaSprite('limo', 3, 3);
addLuaSprite('limo', false);

  makeLuaSprite('BGUGH', 'BG/picod1/BGUGH', -700, -500);
  setScrollFactor('BGUGH', 1, 1);
  scaleLuaSprite('BGUGH', 2, 2);
  addLuaSprite('BGUGH', false);

makeAnimatedLuaSprite('survivors', 'BG/picod1/survivors', -380, 200);
addAnimationByPrefix('survivors', 'survivors', 'Survivors Idle', 24, true);  
objectPlayAnimation('survivors', 'survivors', true)
scaleLuaSprite('survivors', 0.7, 0.7);
addLuaSprite('survivors', false);

makeAnimatedLuaSprite('limoF', 'BG/picod1/limoF', -800, -550);
addAnimationByPrefix('limoF', 'limoF', 'Limo Bop', 24, true);  
objectPlayAnimation('limoF', 'limoF', true)
scaleLuaSprite('limoF', 3, 3);
addLuaSprite('limoF', true);

setProperty('defaultCamZoom', 0.65) 

end