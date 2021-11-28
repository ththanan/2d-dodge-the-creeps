extends RigidBody2D

export var min_speed = 150.0
export var max_speed = 250.0

func _ready():
	randomize()
	$AnimatedSprite.playing = true
	var mob_tyoes = $AnimatedSprite.frames.get_animation_names()
	$AnimatedSprite.animation = mob_tyoes[randi() % mob_tyoes.size()]


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
