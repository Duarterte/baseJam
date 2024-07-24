extends Control
@onready var gametTilteLabel: Label = $CenterContainer2/GametTitle
@onready var versionLabel: Label = $versionLabel
# Called when the node enters the scene tree for the first time.
func _ready():
	if SGlobal.gameName: gametTilteLabel.text = SGlobal.gameName
	if SGlobal.gameName: versionLabel.text    = SGlobal.version
	if SGlobal.firstBoot:
		$AnimationPlayer.play("curtainAnim", 0.)
		await get_tree().create_timer(2.).timeout
		remove_child($SceneEntryCurtain)
		SGlobal.firstBoot = false
		


func _on_quit_pressed():
	get_tree().quit()
