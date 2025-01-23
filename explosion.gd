extends Sprite2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer

func animate():
	animation_player.play("explode")
