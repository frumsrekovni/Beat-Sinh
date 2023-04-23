extends CharacterBody2D


const SPEED = 1000.0
var screen_dimensions
func _ready():
	screen_dimensions = get_viewport_rect().size
	print(screen_dimensions)
func _physics_process(delta):
	
	if Input.is_action_pressed("ui_left"):
		#motion = move_and_collide(Vector2(-SPEED * delta, 0))
		velocity.x -= 1
	if Input.is_action_pressed("ui_right"):
		#motion = move_and_collide(Vector2(SPEED * delta, 0))
		velocity.x += 1
	
	position += velocity * delta * SPEED
	position = position.clamp(Vector2.ZERO, screen_dimensions)
	
