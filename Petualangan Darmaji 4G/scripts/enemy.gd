extends CharacterBody2D

var SPEED = 35
# maksimal kecepatan musuh
var player_chase = false
# sebuah fungsi agar musuh dapat mengejar player
var player = null

var health = 100 
# total HP milik musuh
var player_inattack_range = false
# kondisi apakah player dalam jangkauan

var can_take_damage = true
# var yang mengatur agar musuh dapat menerima damage

func _physics_process(delta):
	deal_with_damage()
	
	if player_chase:
		position += (player.position - position)/SPEED
		
		$AnimatedSprite2D.play("side_walk")
		
		if(player.position.x - position.x) < 0:
			$AnimatedSprite2D.flip_h = true
		else:
			$AnimatedSprite2D.flip_h = false
		
	else:
		$AnimatedSprite2D.play("side_idle")
# mengejar player berdasarkan posisi XY player dan memainkan animasi jalan dan Idle

func _on_detection_area_body_entered(body):
	player = body
	player_chase = true
# mengecek apakah player memasuki jangkauan pengejaran
# jika iya maka player akan diparani

func _on_detection_area_body_exited(body):
	player = null
	player_chase = false
# mengecek apakah player diluar jangakauan pengejaran
# jika tidak maka akan berhenti marani

func enemy():
	pass
# skip dulu Xixixixi :P


func _on_enemy_hitbox_body_entered(body):
	if body.has_method("player"):
		player_inattack_range = true
# kondisi jika player masuk jangkauan serangan
# jika iya, maka player akan menerima damage


func _on_enemy_hitbox_body_exited(body):
	if body.has_method("player"):
		player_inattack_range = false
# kondisi jika player keluar jangkauan serangan
# jika iya, maka player akan berhenti menerima damage
		
		
func deal_with_damage():
	#if player_inattack_range and global.player_current_attack == true:
		#print("slime health = ", health)
		#if health <= 0:
			#self.queue_free()
	pass
# skip dulu ini yagesya


func _on_take_damage_cooldown_timeout():
	pass # Replace with function body.
# ini juga
