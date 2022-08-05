function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is a Bullet Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Normal' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'notes_unable'); 
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'noteSplashesUnable');
		end
	end
end

function onCountdownStarted()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Alt Animation' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'notes_unable'); 
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'noteSplashesUnable');
		end
	end
end
