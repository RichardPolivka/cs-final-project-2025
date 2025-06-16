extends CharacterBody2D

# Movement parameters
@export var speed: float = 200.0
@export var jump_velocity: float = -400.0
@export var gravity: float = 1200.0


func _physics_process(delta):
	# Apply gravity
	if not is_on_floor():
		velocity.y += gravity * delta
	else:
		velocity.y = 0

	# Get left/right input
	var input_direction = Input.get_action_strength("RIGHT") - Input.get_action_strength("LEFT")
	velocity.x = input_direction * speed

	# Move and slide using the CharacterBody2D built-in method
	velocity = move_and_slide()
