extends RigidBody2D
var cena
var jump=0
onready var Ball_sprite = get_node("Sprite")
func _ready():
	if (global.option==1):
		Ball_sprite.set_texture(global.skin_padrao)
		global.gravt = 15
		global.impulse = -1000
	elif (global.option == 2):
		Ball_sprite.set_texture(global.skin_boliche)
		global.gravt = 18
		global.impulse = -1000
	elif (global.option == 3):
		global.gravt = 12
		Ball_sprite.set_texture(global.skin_smile)
		global.impulse = -1000
	elif (global.option == 4):
		Ball_sprite.set_texture(global.skin_tenis)
		global.gravt = 7 
		global.impulse = -600
	
	cena = get_tree().get_current_scene()
	set_gravity_scale(0)
	set_process_input(true)
	

func _Jump():
	jump=1

func _Stop():
	jump=0




func _input(event):
	if (jump==1):
		if event.is_action_pressed("touch"):
			on_touch()



func on_touch():
	set_gravity_scale(global.gravt)
	apply_impulse(Vector2(0,0),Vector2(rand_range(200,-200),global.impulse))
	


func _on_Area2D_mouse_entered():
	_Jump()

func _on_Area2D_mouse_exited():
	_Stop()

func die():
	linear_velocity = Vector2(0,0)
	set_gravity_scale(0)
	global_transform.origin = Vector2(218,716)
	


#func _on_Area2D_body_entered(body):
	#if body.get_name() == "Ball":
		#cena.kill()
		#print("test")
		

#func _on_Ponto_body_entered(body):
	#if body.get_name() == "Ball":
		#cena.pontuar()
		
	



