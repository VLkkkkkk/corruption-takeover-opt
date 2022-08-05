local canEnd = false;

function onEndSong()
   if not canEnd then
      if isStoryMode then
         setProperty('inCutscene', true);
         runTimer('startDialogue', 0.8)
         canEnd = true
         return Function_Stop;
      end
   end
   return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then
        setProperty('camOther.alpha', 0.35);
		startDialogue('dialogueEnd', '');
	end
end