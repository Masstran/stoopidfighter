extends Node2D

enum STATES {START, LEFT_TURN, RIGHT_TURN, WHATEVER}
var state = STATES.START
var fighter_left : Fighter
var fighter_right : Fighter


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"fighter left".hide()
	$"fighter right".hide()
	$Buttons.hide()


func new_game() -> void:
	# TODO: implement actual turns
	state = STATES.LEFT_TURN
	fighter_left = $"fighter left"
	fighter_right = $"fighter right"
	fighter_left.show()
	fighter_right.show()
	$Buttons.show()
	fighter_left.enemy = fighter_right
	fighter_right.enemy = fighter_left


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_timer_timeout() -> void:
	pass # Replace with function body.


func _on_attack_left_pressed() -> void:
	fighter_left.attack()


func _on_defend_left_pressed() -> void:
	pass # Replace with function body.


func _on_attack_right_pressed() -> void:
	fighter_right.attack()
