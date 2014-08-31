sub EVENT_SAY {
  if ($text=~/hail/i) {
    quest::say("Hi. How are you? The fish are biting pretty good. That is what Skipynn tells me. I sure wish I had a different [job]. If I did, I could fish all day long.");
  }
  if ($text=~/job/i) {
    quest::say("I am a messenger for [Antonius Bayle], ruler of the great city of [Qeynos].");
  }
  if ($text=~/qeynos/i) {
    quest::say("Huh?! Have you been living in a cave? The great city of Qeynos is the mightiest nation in Antonica! You'd best journey toward the west and visit the city whose influence stretches beyond the horizons.");
      }
      if ($text=~/antonius bayle/i) {
        quest::say("How can it be that you do not know of Antonius Bayle? Was it not he who named this great continent of Antonica? Is it not he who rules over the most powerful city on Norrath? Surely you jest!");
      }
	if ($text=~/i am from the hall of truth/i) {
		quest::say("I have been expecting you. I am very parched. Could you please get me a bottle of milk? Once you do that will show you where I hid the note.");
		}
}

sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 13087 =>1 )) {
    quest::say("Aaahhhh. Now that is refreshing. Just let me rest for a bit. The note is safe and sound in my bedroll inside the inn.");
    quest::faction( 184,1 );
    quest::faction( 86,-1 );
    quest::faction( 105,-1 );
    quest::faction( 311,1 );
    quest::faction( 258,1 );
	$npc->SetAppearance(1);
    quest::settimer(1,60);
  }
  plugin::return_items(\%itemcount);
}

sub EVENT_TIMER {
	if($timer == 1) {
			$npc->SetAppearance(0);
			quest::stoptimer(1);
			quest::start(550000);
	}
}

sub EVENT_WAYPOINT_ARRIVE {
	
	if($wp eq 3) {
		quest::spawn2(408198,0,0,1474,394,26,0);
	}
	if($wp eq 4) {
		quest::respawn(407014, 0);
	}
}
