extends Node2D

@export var health = 100

signal death

# Called when the node enters the scene tree for the first time.
func _ready():
	health = 100
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func get_hit(damage):
	health -= damage
	if health <= 0:
		health = 0
		
