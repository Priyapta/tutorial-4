extends Area2D

@export var sceneName: String = "Level 1"

func _on_Area_Trigger_body_entered(body):
	var current_scene = get_tree().current_scene.name
	
	if body.name == "Player":
		if current_scene == sceneName:
			Global.lives -= 1
		
		var next_scene = ""
		
		if Global.lives == 0:
			Global.last_level = sceneName
			next_scene = "res://scenes/GameOver.tscn"
		else:
			next_scene = "res://scenes/" + sceneName + ".tscn"
		
		var transition = preload("res://scenes/transition.tscn").instantiate()
		get_tree().current_scene.add_child(transition)
		
		var anim = transition.get_node("AnimationPlayer")
		anim.play("RESET")
		
		await anim.animation_finished
		
		get_tree().change_scene_to_file(next_scene)
