extends Node2D

func _ready():
	pass
	
func _process(delta): 
	change_scene()

func _on_cliffside_area_body_entered(body):
	#if body.has_method("player"):
		#global.transition_scene = true
	pass

func _on_cliffside_area_body_exited(body):
	#if body.has_method("player"):
		#global.transition_scene = false 
	pass
		

func change_scene():
	#if global.transition_scene == true:
		#if global.current_scene == "world":
			#get_tree().change_scene_to_file("res//scenes/world.tscn")
			#global.finish_changescene()
	pass 
