extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func _process(delta):
	if SGlobal.config[SGlobal.SHOWFPS]:
		$FPS.text = str(Engine.get_frames_per_second())
	else:
		$FPS.text = ""
