extends Control


onready var scene_tree: = get_tree()
onready var pasue_overlay: ColorRect  =  get_node("PauseOverlay")


var paused: = false setget set_paused


func _unhandled_input(event):
	if event.is_action_pressed("pause"):
		self.paused = not paused
		scene_tree.set_input_as_handled()


func set_paused(value: bool) -> void:
	paused = value
	scene_tree.paused = value
	pasue_overlay.visible = value
