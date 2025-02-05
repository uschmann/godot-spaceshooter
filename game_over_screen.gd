extends ColorRect

@onready var high_score_label: Label = $HighScoreLabel

func _ready() -> void:
	var highscore = SaveAndLoad.load_highscore()
	if highscore == null: return
	high_score_label.text = "Highscore: " + str(highscore)

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_cancel") or Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene_to_file("res://start_menu.tscn")
