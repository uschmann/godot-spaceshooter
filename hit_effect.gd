extends Node2D

@onready var cpu_particles_2d: CPUParticles2D = $CPUParticles2D

func _ready():
	cpu_particles_2d.one_shot = true	

func _on_timer_timeout() -> void:
	queue_free()
