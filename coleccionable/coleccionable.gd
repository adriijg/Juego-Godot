extends Area2D

# Agregamos al player al grupo de jugadores
func _ready() -> void:
	$ani_moneda.play("default")

func _on_body_entered(body: Node2D):
	if body.is_in_group("jugadores"):
		body.add_moneda()
		queue_free()
