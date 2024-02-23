extends BaseCharacter;
class_name LittleGuy;

# 测试的小人物

func _init() :
	character_name = "小家伙";
	base_attributes.attributes.attack = 200;
	bonus_attributes.attributes.attack = 0.5;	# 0.5倍

func on_battle_event(char : BaseBattleCharacter, event : BattleEvent) :
	print(char.character_data.character_name)
	pass;
	# 在战斗时 接收到某一事件时触发
