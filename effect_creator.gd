extends Node2D

@export var effect : PackedScene

func create_explosion():
	if not effect is PackedScene:
		return
	
	var world = get_tree().current_scene
	var explosion = effect.instantiate()
	explosion.global_position = global_position
	world.add_child(explosion)
