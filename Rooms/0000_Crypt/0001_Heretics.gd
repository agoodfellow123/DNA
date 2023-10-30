extends RichTextLabel

var ln
func _on_ready():
	var wEng = get_node("/root/WritingEngine")
	ln = wEng.pl(3)
	
	var stats = get_node("/root/Stats")
	
	ln[0] = "As you rise up chants of the fanatics got louder. After a one last stong chant all the fanatics stoped.\nOne from the front line started to walk twoards you and and get into your presence. He is old, a bit too old to be a fanatic but alas, he is in front of you.\n\nO'great hero! Thank you for hearing our prays. We had you wake you up from your sleep because the world is in grave danger once again!"
	ln[1] = wEng.wUrl("who","Who are you?")
	ln[2] = wEng.wUrl("sleep", "Sleep? What happened to me?")

	self.bbcode_text = stats.log + ln[0] + "\n" + ln[1] + "\n" + ln[2]
	
func _on_meta_clicked(meta):
	var wEng = get_node("/root/WritingEngine")
