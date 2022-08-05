local ratingX=450
local ratingY=250
local ratingImage='Vanilla'
local ratingSize=0.6
local flingSpeed=0.5
local flingHeight=35
local fileDir='GUI/Vanilla/'
local numDir='GUI/Classic/'
local ComboUsesSpriteSheet=false

local thing={
		[1]={0, 'sicks'},
		[2]={0, 'goods'},
		[3]={0, 'bads'},
		[4]={0, 'shits'},
	}
local ratefunc={
		[1]=function()--sick
			spawnRating('sick')
			ratingPop()
			comboCount()
		end,
		[2]=function()--good
			spawnRating('good')
			ratingPop()
			comboCount()
		end,
		[3]=function()--bad
			spawnRating('bad')
			ratingPop()
			comboCount()
		end,
		[4]=function()--shit
			spawnRating('shit')
			ratingPop()
			comboCount()
		end,
	}
	
local hits=0
local defaultY= -20
local strCombo='0'

function onCountdownStarted()
setProperty('timeBar.scale.x', 0.5)
setProperty('timeBarBG.scale.x', 0.5)
end

function onCreatePost()
	doTweenColor('timeTxt', 'timeTxt', 'FF80B1', 0.01, 'linear');
	doTweenColor('scoreTxt', 'scoreTxt', 'FF80B1', 0.01, 'linear');
	defaultY=getProperty('gf.y')+ratingY
	if ComboUsesSpriteSheet==true then
		makeAnimatedLuaSprite('charOne', numDir..'numbers', getProperty('gf.x')+ratingX+35, defaultY+25)
			scaleObject('charOne', 0.475, 0.475)
			addAnimationByPrefix('charOne', '1', 'one', 24, false)
			addAnimationByPrefix('charOne', '2', 'two', 24, false)
			addAnimationByPrefix('charOne', '3', 'three', 24, false)
			addAnimationByPrefix('charOne', '4', 'four', 24, false)
			addAnimationByPrefix('charOne', '5', 'five', 24, false)
			addAnimationByPrefix('charOne', '6', 'six', 24, false)
			addAnimationByPrefix('charOne', '7', 'seven', 24, false)
			addAnimationByPrefix('charOne', '8', 'eight', 24, false)
			addAnimationByPrefix('charOne', '9', 'nine', 24, false)
			addAnimationByPrefix('charOne', '0', 'zero', 24, false)
		addLuaSprite('charOne', true)
	
		makeAnimatedLuaSprite('charTwo',numDir..'numbers', getProperty('gf.x')+ratingX+75, defaultY+25)
			scaleObject('charTwo', 0.475, 0.475)
			addAnimationByPrefix('charTwo', '1', 'one', 24, false)
			addAnimationByPrefix('charTwo', '2', 'two', 24, false)
			addAnimationByPrefix('charTwo', '3', 'three', 24, false)
			addAnimationByPrefix('charTwo', '4', 'four', 24, false)
			addAnimationByPrefix('charTwo', '5', 'five', 24, false)
			addAnimationByPrefix('charTwo', '6', 'six', 24, false)
			addAnimationByPrefix('charTwo', '7', 'seven', 24, false)
			addAnimationByPrefix('charTwo', '8', 'eight', 24, false)
			addAnimationByPrefix('charTwo', '9', 'nine', 24, false)
			addAnimationByPrefix('charTwo', '0', 'zero', 24, false)
		addLuaSprite('charTwo', true)

		makeAnimatedLuaSprite('charThree', numDir..'numbers', getProperty('gf.x')+ratingX+115, defaultY+25)
			scaleObject('charThree', 0.475, 0.475)
			addAnimationByPrefix('charThree', '1', 'one', 24, false)
			addAnimationByPrefix('charThree', '2', 'two', 24, false)
			addAnimationByPrefix('charThree', '3', 'three', 24, false)
			addAnimationByPrefix('charThree', '4', 'four', 24, false)
			addAnimationByPrefix('charThree', '5', 'five', 24, false)
			addAnimationByPrefix('charThree', '6', 'six', 24, false)
			addAnimationByPrefix('charThree', '7', 'seven', 24, false)
			addAnimationByPrefix('charThree', '8', 'eight', 24, false)
			addAnimationByPrefix('charThree', '9', 'nine', 24, false)
			addAnimationByPrefix('charThree', '0', 'zero', 24, false)
		addLuaSprite('charThree', true)
		
		setProperty('charOne.alpha',0)
		setProperty('charTwo.alpha',0)
		setProperty('charThree.alpha',0)
	end
end

function goodNoteHit(id, dir, note, sus)
	if not sus then
		hits=hits+1
	end
	for i=1,4 do
		if thing[i][1]~=getProperty( thing[i][2] ) then
			thing[i][1]=getProperty( thing[i][2] )
			if ratefunc[i] then
				ratefunc[i]()
			end
		end
	end
end

function noteMiss(id, dir, note, sus)
	hits=hits+1
	spawnRating('miss')
	objectPlayAnimation('rating'..hits, 'miss', true)
	ratingPop()
end

function noteMissPress(dir)
	hits=hits+1
	spawnRating('miss')
	objectPlayAnimation('rating'..hits, 'miss', true)
	ratingPop()
end

function onTweenCompleted(tag)
	for i=0,hits do
		if tag=='rateIN'..i then
			doTweenY('rateOUT'..i, 'rating'..i, defaultY+(flingHeight*1.5), flingSpeed, 'circIn')
			doTweenAlpha('rateFADE'..i, 'rating'..i, 0, flingSpeed, 'linear')
		end
	end
	
	for d=0, hits do
		if tag=='rateFADE'..d then
			removeLuaSprite('rating'..d)
		end
	end
end

--custom funcs
function ratingPop()
	setProperty('rating'..hits..'.alpha', 1)
	doTweenY('rateIN'..hits, 'rating'..hits, defaultY-flingHeight, flingSpeed, 'circOut')
end

function spawnRating(var)
	defaultY=getProperty('gf.y')+ratingY
	makeLuaSprite('rating'..hits, fileDir..var, getProperty('gf.x')+ratingX, defaultY)
		scaleObject('rating'..hits, ratingSize, ratingSize)
		setProperty('rating'..hits..'.alpha', 0)
	addLuaSprite('rating'..hits, true)
end

function comboCount()
	if getProperty('combo')>10 then
		strCombo=tostring(getProperty('combo'))
		if string.len(strCombo)<3 then
			strCombo='0'..strCombo
		end
		
		local chars={
			[1]=getStringChar(strCombo, 1),
			[2]=getStringChar(strCombo, 2),
			[3]=getStringChar(strCombo, 3),
		}
		for c=1,3 do
			if chars[c]=='' then
				chars[c]='0'
			end
		end
	
		cancelTween('charOneFADE')
		cancelTween('charTwoFADE')
		cancelTween('charThreeFADE')
		cancelTween('charOneIN')
		cancelTween('charTwoIN')
		cancelTween('charThreeIN')
		if ComboUsesSpriteSheet==false then
			makeLuaSprite('charOne', numDir..'num'..chars[1], getProperty('gf.x')+ratingX, defaultY+100)
				scaleObject('charOne', 0.4, 0.4)
			addLuaSprite('charOne', true)
	
			makeLuaSprite('charTwo',numDir..'num'..chars[2], getProperty('gf.x')+ratingX+30, defaultY+100)
				scaleObject('charTwo', 0.4, 0.4)
			addLuaSprite('charTwo', true)

			makeLuaSprite('charThree', numDir..'num'..chars[3], getProperty('gf.x')+ratingX+60, defaultY+100)
				scaleObject('charThree', 0.4, 0.4)
			addLuaSprite('charThree', true)
		else
			setProperty('charOne.alpha',1)
			setProperty('charTwo.alpha',1)
			setProperty('charThree.alpha',1)
			objectPlayAnimation('charOne', chars[1], true)
			objectPlayAnimation('charTwo', chars[2], true)
			objectPlayAnimation('charThree', chars[3], true)
			setProperty('charOne.y', defaultY+100)
			setProperty('charTwo.y', defaultY+100)
			setProperty('charThree.y', defaultY+100)
		end
		local dev=10
		doTweenAlpha('charOneFADE', 'charOne', 0, 0.5, 'linear')
		doTweenAlpha('charTwoFADE', 'charTwo', 0, 0.5, 'linear')
		doTweenAlpha('charThreeFADE', 'charThree', 0, 0.5, 'linear')
	
		doTweenY('charOneIN', 'charOne', (defaultY+75)+math.random(dev*-1, dev), 0.5, 'circOut')
		doTweenY('charTwoIN', 'charTwo', (defaultY+75)+math.random(dev*-1, dev), 0.5, 'circOut')
		doTweenY('charThreeIN', 'charThree', (defaultY+75)+math.random(dev*-1, dev), 0.5, 'circOut')
	end
end

function getStringChar(var, num)
	--this is useless but it helps my peanut sized brain
	local result=string.sub(var, num, num)
	return result;
end

function onBeatHit()
if curBeat == 1 then
doTweenColor('timeBar', 'timeBar', 'E40058', 0.01, 'linear');
end
end