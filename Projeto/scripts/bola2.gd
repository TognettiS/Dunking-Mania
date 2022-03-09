extends Button

func _ready():
	pass 




func _on_bola2_pressed():
	global.option = 2
	get_node("Clique2").play()
