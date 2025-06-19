extends CharacterBody2D

@export var speed: float = 900.0
@export var jump_velocity: float = -400.0
@export var gravity: float = 90.0





func _physics_process(delta):
# Get left/right input
	var input_direction = Input.get_action_strength("RIGHT") - Input.get_action_strength("LEFT")
	velocity.x = input_direction * speed
	print("Input direction: ", Input.get_action_strength("RIGHT") - Input.get_action_strength("LEFT"))
	if Input.is_action_just_pressed("UP"):
		velocity.y = jump_velocity
		print("On floor? ", is_on_floor())
	# Move and slide using built-in method (no parameters!)
	move_and_slide()
