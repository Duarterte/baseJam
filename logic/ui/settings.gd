extends Control

func _ready():
	$ZVmain/VBoxContainer/MarginContainer/HSplitContainer/CheckButton.button_pressed = SGlobal.config[SGlobal.SHOWFPS]

func _on_back_btn_pressed():
	get_tree().change_scene_to_file("res://logic/rootScn.tscn")


func _on_check_button_toggled(toggled_on):
	SGlobal.config[SGlobal.SHOWFPS] = toggled_on
