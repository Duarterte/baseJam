@tool
extends Control
@onready var btn: Button =  $Button


func _on_button_pressed():
	var rootDir := DirAccess.open("res://")
	if not rootDir.dir_exists("assets"):
		rootDir.make_dir("assets")
		rootDir.make_dir("assets/textures")
		rootDir.make_dir("characters")
		rootDir.make_dir("characters/textures")
		rootDir.make_dir("world")
		rootDir.make_dir("world/textures")
		var fs: EditorFileSystem = EditorInterface.get_resource_filesystem()
		fs.scan()
