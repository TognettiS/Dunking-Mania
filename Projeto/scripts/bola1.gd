extends Button

func _ready():
	pass 




func _on_bola1_pressed():
	global.option = 1
	get_node("Clique").play()
