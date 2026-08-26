extends CharacterBody2D

const DIRECTIONS := [Vector2.LEFT, Vector2.RIGHT, Vector2.UP, Vector2.DOWN]

@export var speed: float = 160.0

var direction: Vector2 = Vector2.LEFT

func _process(delta: float) -> void:
    position += direction * speed * delta
    position = position.clamp(Vector2.ZERO, get_viewport_rect().size)

func _on_timer_timeout() -> void:
    direction = DIRECTIONS.pick_random()
