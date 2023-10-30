extends RichTextLabel

var ln

func _on_ready():
	var wEng = get_node("/root/WritingEngine")
	ln = wEng.pl(6)
	ln[0] = "As you wake up from the coffin you were rightfully sleeping in your senses slowly started to come back to you.\nYou slowly started to hear chants from the fanatics who were surrounding you."
	ln[1] = wEng.wUrl("riseUp", "Rise up")
	#ln[2] = wEng.wDL("You did: Rise up")
	ln[3] = 'You are in an unfamiliar dark room, some of the fanatics hold torches. Why do you call them fanatics? Maybe just an instinct, or maybe the fact that they all give you that impression with their chanting around a coffin but that is insignificant right now, more importantly as you completely gain back your senses you realize something is missing... Your memories. You only remember some minor details about yourself such as '
	ln[4] = wEng.wUrl("whatWereYou","what were you")
	#ln[5] = wEng.wDL("what were you")
	self.bbcode_text = ln[0] + "\n" + ln[1]

func _on_meta_clicked(meta):
	var wEng = get_node("/root/WritingEngine")
	match meta:
		"riseUp": 
			self.bbcode_text = ln[0] + "\n" + wEng.aAct("d", ln[1]) + "\n\n" + ln[3] + ln[4]
		"whatWereYou": get_tree().change_scene_to_file("res://CharCreator.tscn")
	var stats = get_node("/root/Stats")
	stats.log = ln[0] + "\n" + wEng.aAct("d", ln[1]) + "\n\n" + ln[3] + wEng.dUrl(ln[4]) + "\n\n"
