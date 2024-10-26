extends RichTextLabel

var base_node: Fighter
var max_health: int
var formatted_text = "%s/%s"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	base_node = get_parent().get_parent()
	max_health = base_node.health
	text = formatted_text % [max_health, max_health]


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	text = formatted_text % [base_node.health, max_health]
