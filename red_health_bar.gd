extends ColorRect

var max_health
var max_size
var start_position_x
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	max_health = get_parent().health
	max_size = size.x
	start_position_x = position.x
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	size.x = max_size * (max_health - get_parent().health) / max_health
	position.x = start_position_x + max_size - size.x
	pass
