extends CharacterBody2D

@export var speed: float = 200.0
@export var jump_velocity: float = -400.0
@export var gravity: float = 900.0

var current_color: String = "red"

@onready var sprite: Sprite2D = $Sprite2D

func _physics_process(delta):
	# Gravity
	if not is_on_floor():
		velocity.y += gravity * delta

	# Input
	var input_direction = Input.get_action_strength("RIGHT") - Input.get_action_strength("LEFT")
	velocity.x = input_direction * speed

	if Input.is_action_just_pressed("UP") and is_on_floor():
		velocity.y = jump_velocity

	# Movement
		move_and_slide()

func set_color(new_color: String):
	current_color = new_color

	# Change the sprite's modulate color
	match new_color:
		"red":
			sprite.modulate = Color(1, 0, 0)
		"blue":
			sprite.modulate = Color(0, 0.5, 1)
		"green":
			sprite.modulate = Color(0, 1, 0)
		"yellow":
			sprite.modulate = Color(1, 1, 0)
