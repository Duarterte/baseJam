extends Node

var gameName: String = "Game Title in res://logic/data/SGlobal.gd"
var version: String  = "V0.0.1"
var firstBoot: bool  = true

func _ready():
	print(gameName + " " + version)
	
