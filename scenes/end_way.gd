extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass  # Replace with function body.


func _on_timer_timeout() -> void:
	await get_tree().create_timer(3).timeout
	$CollisionShape2D.disabled = true
	$CollisionShape2D/Sprite2D.visible = false


func _on_area_2d_body_entered(body: Node2D) -> void:
	get_tree().call_deferred("change_scene_to_file", "res://scenes/WinScreen.tscn")
