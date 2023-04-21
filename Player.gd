extends CharacterBody2D


const SPEED = 1000.0
var motion = Vector2.ZERO

func _physics_process(delta):
	
	if Input.is_action_pressed("ui_left"):
		motion = move_and_collide(Vector2(-SPEED * delta, 0))
	if Input.is_action_pressed("ui_right"):
		motion = move_and_collide(Vector2(SPEED * delta, 0))
	
