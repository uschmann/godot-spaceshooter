extends ColorRect

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_cancel") or Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene_to_file("res://start_menu.tscn")
