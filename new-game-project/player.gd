extends CharacterBody2D

@export var speed = 600
@onready var sprite = $Sprite2D # Assuming the sprite is a child of the CharacterBody2D

func _on_area_2d_area_entered(area):
	print("Entered area:", area.name)
	if area.name == "changer":
		var new_texture = load("res://download.png")
		if sprite and new_texture:
			sprite.texture = new_texture
		else:
			print("Sprite or texture missing")
	print("Entered area:", area.name)
	if area.name == "changerback":
		var new_texture = load("res://icon.svg")
		if sprite and new_texture:
			sprite.texture = new_texture
		else:
			print("Sprite or texture missing")




func get_input():
	var input_direction = Input.get_vector("LEFT", "RIGHT", "UP", "DOWN")
	velocity = input_direction * speed

func _physics_process(delta):
	get_input()
	move_and_slide()
	


func _on_sprite_2d_texture_changed() -> void:
	pass # Replace with function body.
