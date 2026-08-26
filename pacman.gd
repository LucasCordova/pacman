extends CharacterBody2D

@export var speed: float = 260.0

func _process(delta: float) -> void:
    var direction := Vector2.ZERO
    if Input.is_action_pressed("ui_left"):
        direction = Vector2.LEFT
    elif Input.is_action_pressed("ui_right"):
        direction = Vector2.RIGHT
    elif Input.is_action_pressed("ui_up"):
        direction = Vector2.UP
    elif Input.is_action_pressed("ui_down"):
        direction = Vector2.DOWN

    position += direction * speed * delta
    position = position.clamp(Vector2.ZERO, get_viewport_rect().size)
