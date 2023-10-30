extends Control

func _on_draw():
	var startGame = preload("res://start_game.gd")
	if startGame.newGame == true:
		get_node("PanelContainer/MarginContainer/HSplitContainer/InfoLineContainer").hide()
	else:
		get_node("PanelContainer/MarginContainer/HSplitContainer/InfoLineContainer").show()
		


func _on_ready():
	var userStats = get_node("/root/Stats")
	var strLbl = get_node("PanelContainer/MarginContainer/HSplitContainer/InfoLineContainer/InfoPanel/VBoxContainer/HBoxContainer/StrLbl")
	var dexLbl = get_node("PanelContainer/MarginContainer/HSplitContainer/InfoLineContainer/InfoPanel/VBoxContainer/HBoxContainer2/DexLbl")
	var intLbl = get_node("PanelContainer/MarginContainer/HSplitContainer/InfoLineContainer/InfoPanel/VBoxContainer/HBoxContainer3/IntLbl")
	var chrLbl = get_node("PanelContainer/MarginContainer/HSplitContainer/InfoLineContainer/InfoPanel/VBoxContainer/HBoxContainer4/ChrLbl")
	strLbl.text = str(userStats.userStr)
	dexLbl.text = str(userStats.userDex)
	intLbl.text = str(userStats.userInt)
	chrLbl.text = str(userStats.userChr)
