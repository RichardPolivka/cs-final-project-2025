extends CharacterBody2D

@export var speed: float = 200.0

func _physics_process(delta: float) -> void:
	var direction = Vector2.ZERO
	var velocity: Vector2 = Vector2.ZERO


	if Input.is_action_pressed("RIGHT"):
		direction.x += 1
	if Input.is_action_pressed("LEFT"):
		direction.x -= 1
	if Input.is_action_pressed("DOWN"):
		direction.y += 1
	if Input.is_action_pressed("UP"):
		direction.y -= 1

	# Normalize direction to avoid faster diagonal movement
	if direction != Vector2.ZERO:
		direction = direction.normalized()

	velocity = direction * speed
	move_and_slide()
