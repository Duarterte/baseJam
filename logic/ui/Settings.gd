extends Menus
@onready var fps_check_box:   CheckBox = $VBoxContainer/PanelContainer2/FpsCheckBox
@onready var muted_check_box: CheckBox = $VBoxContainer/PanelContainer/VBoxContainer/MuteVol
func _ready():
	super()
	fps_check_box.button_pressed = SGlobal.config[SGlobal.SHOWFPS]
	muted_check_box.toggle_mode  = not SGlobal.config[SGlobal.MUTED]
# Called every frame. 'delta' is the elapsed time since the previous frame.


func _on_fps_check_box_pressed():
	SGlobal.config[SGlobal.SHOWFPS] = fps_check_box.button_pressed


func _on_go_back_pressed():
	get_tree().change_scene_to_file("res://logic/ui/MainMenu.tscn")


func _on_master_volumen_slider_value_changed(value):
	AudioServer.set_bus_volume_db(0, linear_to_db(value))


func _on_mute_vol_toggled(toggled_on):
	SGlobal.config[SGlobal.MUTED] = toggled_on
	AudioServer.set_bus_mute(0, toggled_on)
