extends Node2D

const PELLET := preload("res://pellet.tscn")

var score: int = 0

func _ready() -> void:
    for i in range(12):
        var pellet := PELLET.instantiate()
        pellet.position = Vector2(120 + i * 80, 324)
        pellet.eaten.connect(_on_pellet_eaten)
        add_child(pellet)

func _on_pellet_eaten() -> void:
    score += 1
    print("Score: ", score)
