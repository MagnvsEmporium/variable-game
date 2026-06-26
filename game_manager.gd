extends Control

@onready var goblinLabel = $goblin_label
@onready var slimeLabel = $slime_label

func _ready():
	goblin.name = "Goblin"
	goblin.health = 50
	goblin.damage = 5
	
	slime.name = "Slime"
	slime.health = 50
	slime.damage = 5
	
	redraw()

class enemy:
	var name
	var health
	var damage
	
var goblin = enemy.new()
var slime = enemy.new()


func _on_button_pressed() -> void:
	if goblin.health > 0:
		goblin.health = goblin.health - slime.damage
		print(goblin.health)
	if slime.health > 0:
		slime.health = slime.health - goblin.damage 
		print(slime.health)
	redraw()

func redraw():
	var goblinText = "Name: " + goblin.name +  "\nHealth: " + str(goblin.health) + "\nDamage: " + str(goblin.damage)
	goblinLabel.text = goblinText
	
	var slimeText = "Name: " + slime.name +  "\nHealth: " + str(slime.health) + "\nDamage: " + str(slime.damage)
	slimeLabel.text = slimeText
