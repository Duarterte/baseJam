extends Control

var gameName: String = "Game Title in res://logic/data/SGlobal.gd"
var version: String  = "V0.0.1"
var firstBoot: bool  = true
var config: Array[bool]
enum {
	FIRSTBOOT,
	SHOWFPS
}
func initialConfig(numberOfConfigs: int) -> void:
	config.resize(numberOfConfigs)
	config[FIRSTBOOT] = true
	config[SHOWFPS]   = false
	
func _ready():
	initialConfig(2)
	print(gameName + " " + version)
