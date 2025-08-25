extends Node2D

func _ready() -> void:
	for trigger in get_tree().get_nodes_in_group("trap"):
		trigger.trapTrigger.connect(_disparador)

func _disparador():
	queue_free()
