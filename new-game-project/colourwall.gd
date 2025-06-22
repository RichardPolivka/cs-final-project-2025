extends StaticBody2D

@export var platform_color: String = "red"

func _process(delta):
	var player = get_tree().get_first_node_in_group("player")
	if player:
		var visible = player.current_color == platform_color
		visible = visible or Engine.is_editor_hint()  # So you can always see it in the editor

		$CollisionShape2D.disabled = not visible
		$Sprite2D.visible = visible
