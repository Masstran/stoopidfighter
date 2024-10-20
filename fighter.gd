extends Node2D

class_name Fighter

enum DIRECTION {LEFT, RIGHT}
@export var health = 100
@export var strength = 10
@export var direction = DIRECTION.RIGHT
var enemy : Fighter
signal death
signal change_direction

# Called when the node enters the scene tree for the first time.
func _ready():
	health = 100

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func get_hit(damage):
	health -= damage
	if health <= 0:
		health = 0
		
func attack():
	if enemy == null:
		print("No enemy specified, can't hit")
	enemy.get_hit(strength)
