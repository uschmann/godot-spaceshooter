extends Node2D


@onready var score_label: Label = $ScoreLabel

var score = 0 :
	get:
		return score
	set(value):
		score = value
		score_label.text = "Score: " + str(score)

func _on_ship_ship_destroyed() -> void:
	await get_tree().create_timer(1.5).timeout
	
	var highscore = SaveAndLoad.load_highscore()
	if highscore == null or score > highscore:
			SaveAndLoad.save_highscore(score)
	get_tree().change_scene_to_file("res://game_over_screen.tscn")
	
