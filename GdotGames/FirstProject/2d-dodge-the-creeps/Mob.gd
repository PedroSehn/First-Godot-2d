extends RigidBody2D

export var minSpeed = 145.0
export var maxSpeed = 250.0

func _ready():
	$AnimatedSprite.playing = true
	var mobTypes = $AnimatedSprite.frames.get_animation_names()
	$AnimatedSprite.animation = mobTypes[randi() % mobTypes.size()]


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
