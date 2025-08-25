extends Sprite2D

@export var item_name = "item"


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		body.add_to_inventory(item_name)
		queue_free()
