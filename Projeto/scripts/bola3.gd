extends Button

func _ready():
	pass 




func _on_bola3_pressed():
	global.option = 3
	get_node("Clique3").play()
