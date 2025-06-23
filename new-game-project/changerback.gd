extends Area2D


@export var platform_color: String = "red"
@export var new_texture: Texture2D

func _ready():
	connect("body_entered", Callable(self, "_on_body_entered"))

func _on_body_entered(body):
	print("Entered:", body.name)

	if body.is_in_group("player"):
		var sprite = body.get_node_or_null("Sprite2D")
		if sprite:
			sprite.texture = new_texture
		else:
			print("Sprite not found in player.")
