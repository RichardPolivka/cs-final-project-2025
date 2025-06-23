extends CharacterBody2D

@export var speed = 600
@onready var sprite = $Sprite2D # Assuming the sprite is a child of the CharacterBody2D

func _on_area_2d_area_entered(area):
	if area.name == "changer": # Replace "Area2DName" with the actual name of your Area2D
		# Load a new texture (replace "new_sprite.png" with your desired texture)
		var new_texture = load("res://download.png")
		sprite.texture = new_texture


func get_input():
	var input_direction = Input.get_vector("LEFT", "RIGHT", "UP", "DOWN")
	velocity = input_direction * speed

func _physics_process(delta):
	get_input()
	move_and_slide()
	


func _on_sprite_2d_texture_changed() -> void:
	pass # Replace with function body.
