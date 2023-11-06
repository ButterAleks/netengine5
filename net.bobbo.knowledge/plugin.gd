@tool
extends EditorPlugin

var knowledge_dock

func _enter_tree():
	add_custom_type("KnowledgeAgent", "Node", preload("knowledge_agent.gd"), preload("icons/knowledge_icon.png"))
	add_custom_type("KnowledgeBool", "Resource", preload("knowledge_resources/knowledge_bool.gd"), preload("icons/knowledge_icon.png"))
	add_custom_type("KnowledgeFloat", "Resource", preload("knowledge_resources/knowledge_float.gd"), preload("icons/knowledge_icon.png"))
	add_custom_type("KnowledgeInt", "Resource", preload("knowledge_resources/knowledge_int.gd"), preload("icons/knowledge_icon.png"))
	add_custom_type("KnowledgeString", "Resource", preload("knowledge_resources/knowledge_string.gd"), preload("icons/knowledge_icon.png"))

func _exit_tree():
	remove_custom_type("KnowledgeAgent")
	remove_custom_type("KnowledgeBool")
	remove_custom_type("KnowledgeFloat")
	remove_custom_type("KnowledgeInt")
	remove_custom_type("KnowledgeString")