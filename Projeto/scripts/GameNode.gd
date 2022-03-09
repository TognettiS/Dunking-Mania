extends Node2D
onready var placar = get_node("placar/Control/Label")
onready var placar2 = get_node("placar2/Control2/Label2")
onready var bola = load("res://Scenes/Ball.tscn")
var nd

var pontos = 0
var pontosm= 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pontosm = global.highscore 
	placar2.set_text("Highscore:" + " " + str(pontosm))
	bola = bola.instance()
	add_child(bola)
	nd = get_node("Ball")

func pontuar():
	pontos += 1
	placar.set_text(str(pontos))
	get_node("Pontos").play()
	respawn()
	if pontosm <= pontos:
		pontosm = pontos;
		placar2.set_text("Highscore:" + " " + str(pontosm))
		global.highscore = pontosm
	else:
		pass
	
	

func kill():
	get_node("Caiu").play()
	pontos =0
	placar.set_text(str(pontos))
	respawn()
	

func respawn():
	
	nd.die()



func _on_Area2D_body_entered(body):
	kill()
	
	

func _on_Ponto_body_entered(body):
	pontuar()
