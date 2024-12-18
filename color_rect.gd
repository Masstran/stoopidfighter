extends ColorRect

var max_health
var base_node: Fighter
var max_size
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	base_node = get_parent().get_parent()
	max_health = base_node.health
	max_size = size.x
	if base_node.direction == base_node.DIRECTION.LEFT:
		scale.x *= -1


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	size.x = max_size * base_node.health / max_health
