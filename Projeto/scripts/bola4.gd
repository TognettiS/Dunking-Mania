extends Button

func _ready():
	pass 


func _on_bola4_pressed():
	global.option = 4
	get_node("Clique4").play()
