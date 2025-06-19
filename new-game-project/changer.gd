extends Area3D


@export var change_to_color: String = "blue"

func _on_body_entered(body):
	if body.is_in_group("player"):  # Add your player to the "player" group
		body.set_color(change_to_color)
