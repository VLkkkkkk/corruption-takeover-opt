function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is a Bullet Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Day3Bullets' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'BG/picod1/note/Bullets'); 
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'BG/picod1/note/balaSplashes');
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', 0.00001); 
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0');
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '2');
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);
		end
	end
end

dodgeAnimations = {'singLEFT-alt', 'singDOWN-alt', 'singUP-alt','singRIGHT-alt'}
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Day3Bullets' then
		characterPlayAnim('boyfriend', dodgeAnimations[noteData+1], true);
		setProperty('boyfriend.specialAnim', true);
		playSound('shoot', 1);
	end
end