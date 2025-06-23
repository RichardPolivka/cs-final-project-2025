extends StaticBody2D

@export var required_texture: Texture2D

func _on_Area2D_body_entered(body):
	if body.is_in_group("player"):
		var sprite = body.get_node_or_null("Sprite2D")
		if sprite and sprite.texture == required_texture:
			$CollisionShape2D.disabled = true
		else:
			$CollisionShape2D.disabled = false

func _on_Area2D_body_exited(body):
	if body.is_in_group("player"):
		$CollisionShape2D.disabled = false  # Reset when player leaves
