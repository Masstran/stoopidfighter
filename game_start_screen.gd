extends CanvasLayer

signal start_game
signal exit_game

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_start_game_pressed() -> void:
	$StartGame.hide()
	$GameName.hide()
	$ExitGame.hide()
	start_game.emit()


func _on_exit_game_pressed() -> void:
	$StartGame.hide()
	$GameName.hide()
	$ExitGame.hide()
	exit_game.emit()