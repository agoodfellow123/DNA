extends Control

var userClass = "war"
var userAbl1 = "rage"
var userAbl2 = "toughness"
var userSkllPnts = 30
var userStr = 10
var userDex = 10
var userInt = 10
var userChr = 10

@onready var abl1 = get_node("MarginContainer/VBoxContainer/HBoxContainer6/Abl1")
@onready var abl2 = get_node("MarginContainer/VBoxContainer/HBoxContainer6/Abl2")
@onready var skllPntsLbl = get_node("MarginContainer/VBoxContainer/HBoxContainer7/SkllPntsLbl")
@onready var strLbl = get_node("MarginContainer/VBoxContainer/HBoxContainer2/StrLbl")
@onready var dexLbl = get_node("MarginContainer/VBoxContainer/HBoxContainer3/DexLbl")
@onready var intLbl = get_node("MarginContainer/VBoxContainer/HBoxContainer4/IntLbl")
@onready var chrLbl = get_node("MarginContainer/VBoxContainer/HBoxContainer5/ChrLbl")

func _on_war_btn_pressed():
	userClass = "war"
	userAbl1 = "rage"
	abl1.text = str("Rage")
	abl1.tooltip_text = str("Active/Continuous: As long as you recieve or give damage in every turn, get +(str/5) damage in your melee attacks")
	userAbl2 = "toughness"
	abl2.text = str("Toughness")
	abl2.tooltip_text = str("Passive: Melee attacks against you gets -2 in damage")

func _on_ran_btn_pressed():
	userClass = "ran"
	userAbl1 = "pArrow"
	abl1.text = str("Piercing Arrow")
	abl1.tooltip_text = str("Active: Use a special arrow that does +(dex/5) to an enemy you can use this skill (dex/5) times in combat")
	userAbl2 = "dodge"
	abl2.text = str("Dodge")
	abl2.tooltip_text = str("Passive: Ranged attacks against you gets -2 in accuracy")

func _on_mag_btn_pressed():
	userClass = "mag"
	userAbl1 = "fBall"
	abl1.text = str("Fireball")
	abl1.tooltip_text = str("Active: Throw an fireball that hits multiple enemies with (int/-5) accuracy (penalty can not pass 0)")
	userAbl2 = "mArmour"
	abl2.text = str("Magic Armour")
	abl2.tooltip_text = str("Passive: Magic attacks against you gets -2 in damage")


func _on_str_minu_pressed():
	if userStr > 10:
		userStr -= 1
		userSkllPnts += 1
		updateStr()

func _on_str_plus_pressed():
	if userSkllPnts > 0:
		userStr += 1
		userSkllPnts -= 1
		updateStr()

func updateStr():
	strLbl.text = str(userStr)
	skllPntsLbl.text = str(userSkllPnts)


func _on_dex_minu_pressed():
	if userDex > 10:
		userDex -= 1
		userSkllPnts += 1
		updateDex()

func _on_dex_plus_pressed():
	if userSkllPnts > 0:
		userDex += 1
		userSkllPnts -= 1
		updateDex()

func updateDex():
	dexLbl.text = str(userDex)
	skllPntsLbl.text = str(userSkllPnts)


func _on_int_minu_pressed():
	if userInt > 10:
		userInt -= 1
		userSkllPnts += 1
		updateInt()

func _on_int_plus_pressed():
	if userSkllPnts > 0:
		userInt += 1
		userSkllPnts -= 1
		updateInt()

func updateInt():
	intLbl.text = str(userInt)
	skllPntsLbl.text = str(userSkllPnts)
	

func _on_chr_minu_pressed():
	if userChr > 10:
		userChr -= 1
		userSkllPnts += 1
		updateChr()


func _on_chr_plus_pressed():
	if userSkllPnts > 0:
		userChr += 1
		userSkllPnts -= 1
		updateChr()

func updateChr():
	chrLbl.text = str(userChr)
	skllPntsLbl.text = str(userSkllPnts)


func _on_prc_btn_pressed():
	var userStats = get_node("/root/Stats")
	userStats.userStr = userStr
	userStats.userDex = userDex
	userStats.userInt = userInt
	userStats.userChr = userChr
	userStats.userSkllPnts = userSkllPnts
	var startGame = preload("res://start_game.gd")
	startGame.newGame = false
	get_tree().change_scene_to_file("res://Game.tscn")
