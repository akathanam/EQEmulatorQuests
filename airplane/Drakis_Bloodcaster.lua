-- Necromancer Epic NPC -- Drakis_Bloodcaster
function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Greetings, " .. e.other:GetRace() .. ". Are you ready to begin?");
	elseif(e.message:findi("ready to begin")) then
		e.self:Say("Who would you like to be tested by? Jzil or Dugaas?");
	elseif(e.message:findi("jzil")) then
		e.self:Say("Very well.");
		eq.spawn2(71074,0,0,654.9,1305,-762.2,22);
		eq.depop_with_timer();
	elseif((e.message:findi("Dugaas")) and (e.other:Class() == "Necromancer")) then
		e.self:Say("I will summon him for you then");
		eq.spawn2(71084,0,0,661.6,1302.8,-766.9,254.9);
		eq.depop_with_timer();
	end
end

--Quest by: Solid11
-------------------------------------------------------------------------------------------------
-- Converted to .lua using MATLAB converter written by Stryd
-- Find/replace data for .pl --> .lua conversions provided by Speedz, Stryd, Sorvani and Robregen
-------------------------------------------------------------------------------------------------
