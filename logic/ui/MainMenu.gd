extends Control
@onready var gametTilteLabel: Label = $CenterContainer2/GametTitle

# Called when the node enters the scene tree for the first time.
func _ready():
	if SGlobal.gameName: gametTilteLabel.text = SGlobal.gameName


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
