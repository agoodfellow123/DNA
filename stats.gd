extends Node

var userSkllPnts
var userStr
var userDex
var userInt
var userChr
var log
var curRoom = 0

func getRoomList() -> Array:
	var roomList = preload("res://Rooms/0000_Crypt/crypt_rooms.gd")
	return roomList.listRooms()

func nextRoom() -> String:
	curRoom += 1
	var rL = getRoomList()[curRoom]
	return rL
