class_name Laser
extends RigidBody2D

@onready var effect_creator: Node2D = $EffectCreator


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()

func destroy():
	effect_creator.create_explosion()
	queue_free()
	
