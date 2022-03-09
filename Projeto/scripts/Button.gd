extends Button

 

func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/GameNode.tscn")
	if global.m == 1:
		get_node("/root/Musica").play()
		global.m = 2
	else:
		pass
