extends Node

static func listRooms() -> Array:
	var fileList = []
	var curDir = "res://Rooms//0000_Crypt//"
	var folder = DirAccess.open(curDir)
	if folder:
		folder.list_dir_begin()
		var fileName = folder.get_next()
		while fileName != "":
			if folder.current_is_dir() == false and !fileName.ends_with(".gd"):
				fileList.append(curDir + fileName)
			fileName = folder.get_next()
	return fileList
