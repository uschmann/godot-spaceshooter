extends Area2D

signal ship_destroyed

@export var speed = 100

const LASER_SCENE = preload("res://laser.tscn")
@onready var explosion_creator = $EffectCreator

var is_dead = false

func _process(delta: float) -> void:
	if is_dead:
		return
		
	if Input.is_action_pressed("ui_up"):
		position.y -= speed * delta
	if Input.is_action_pressed("ui_down"):
		position.y += speed * delta
	if Input.is_action_just_pressed("ui_accept"):
		var laser = LASER_SCENE.instantiate()
		var world = get_tree().current_scene
		world.add_child(laser)
		laser.position = self.position

func _on_area_entered(area: Area2D) -> void:
	if is_dead:
		return
	explosion_creator.create_explosion()
	area.queue_free()
	is_dead = true
	hide()
	MusicPlayer.stop()
	ship_destroyed.emit()
