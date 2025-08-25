extends CharacterBody2D

const Speed = 300
const Jumpvelocity = -400

var inventory = []

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = Jumpvelocity
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction*Speed
	else:
		velocity.x = move_toward(velocity.x , 0 , Speed)
	
	move_and_slide()

func add_to_inventory(item_name):
	inventory.append(item_name)
	print("Inventario: ", inventory)
	
	
	
	
