extends Area2D

@export var platform_color: String = "red"


@export var new_texture: Texture2D
func _ready():
	connect("body_entered", Callable(self, "_on_body_entered"))

func _on_body_entered(body):
	# Check if the body is the player (you can use a group or class check)
	if body.is_in_group("player"):
		# Change the sprite's texture on the player
		var sprite = body.get_node("Sprite2D")
		if sprite:
			sprite.texture = new_texture
