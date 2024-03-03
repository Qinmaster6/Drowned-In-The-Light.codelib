extends Node;
# 初始化场景

# 初始化配置文件

# 初始化DLC/Mod框架
# 初始化外部资源

func _init():
	# 初始化:LoadConfigs
	# 初始化:LoadResources
	pass;

var sys = DialogEngine.load_dialogue_group_from_jsonfile("res://Components/GameModules/DialogEngine/DialogTest.json");
func _ready():
	
	var bt : PackedScene = GamePlay.battle_manager;
	aaa = bt.instantiate();
	add_child(aaa);
	GamePlay.register_effect("中毒","中毒","");
	aaa.add_character(BaseCharacter.new(), 0).add_effect(GamePlay.get_effect_data("中毒",1,5));
	pass;


var aaa;
var bbb;

func _input(e : InputEvent) :
	if (e is InputEventKey && e.is_pressed() && e.is_action("ui_accept")) :
		# SceneManager.change_scene_form_file("res://Assets/Scenes/GameScenes/Demo/Test.tscn")
		#GlobalManager.sound_manager.play_suond(load("res://Assets/Audios/Sounds/SEE.mp3")).pitch = 2.0;
		
		pass;

