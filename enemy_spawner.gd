extends Node2D

const ENEMY = preload("res://enemy.tscn")

@onready var spawn_points: Node2D = $SpawnPoints

@export var enemy_speed_min: int = 10
@export var enemy_speed_max: int = 100

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func get_spawn_point() -> Marker2D:
	return spawn_points.get_children().pick_random()

func _on_timer_timeout() -> void:
	var world = get_tree().current_scene
	var spawn_point = get_spawn_point()
	var enemy = ENEMY.instantiate()
	
	enemy.position = spawn_point.global_position
	enemy.speed = randi_range(enemy_speed_min, enemy_speed_max)
	
	world.add_child(enemy)
