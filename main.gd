extends Node2D

var fighter
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	fighter = get_node("Fighter")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_timer_timeout() -> void:
	fighter.get_hit(10)
	pass # Replace with function body.
