## This class exists for the sole purpose of circunventing an apparent bug on TranslationServer where translations doesn't work at all in editor plugins
## このクラスは、エディタープラグインで翻訳がまったく機能しないTranslationServerの明らかなバグを回避することを唯一の目的として存在します。
## As soon as this bug on godot is fixed (or we realize that in fact we where doing something wrong all along) this class should be discarded and all "S.tr" strings in the project should be replaced by "tr"
## godotのこのバグが修正されるとすぐに（または、実際に何か間違ったことをしていることに気づいたら）、このクラスを破棄し、プロジェクト内のすべての「S.tr」文字列を「tr」に置き換える必要があります。

extends Node


var strings_dict:Dictionary = {}


func load_strings()->void:
	## loads the strings dictionary from the default strings csv file
	## デフォルトの文字列csvファイルから文字列辞書をロードします
	var f:File = File.new()
	f.open("res://addons/tontoko_tileset/tontoko_strings.csv", File.READ)
	strings_dict = {} # replace previous dictionary
	var header = Array(f.get_csv_line())
	header[0] = "id"

	while true: # loop csv lines
		var line = f.get_csv_line()
		if line.size() < 1 or (line.size() == 1 and line[0] == ""):
			if f.eof_reached():
				break
			else:
				continue

		var count = -1
		var id = line[0]
		var subdict = {}
		strings_dict[id] = subdict
		for lang in header:
			count += 1
			if lang == "id":
				continue
			subdict[lang] = line[count]


func tr(id:String)->String:
	## shorthand for the translate method
	## mimics the behavior of Object.tr(message:String)
	## translateメソッドの省略形
	## Object.tr(message:String) の動作を模倣します
	return translate(id)


func translate(id:String)->String:
	## mimics the behavior of TranslationServer.translate(message:String)
	## TranslationServer.translate(message:String) の動作を模倣します
	if not strings_dict is Dictionary or strings_dict.size() < 1:
		print("warning: strings not yet loaded")
		load_strings()

	if not id in strings_dict:
		print("warning: there is no id '%s' in the strings dictionary" % id)
		print(strings_dict)
		return id

	var translations:Dictionary = strings_dict[id]
	var locale:String = TranslationServer.get_locale()
	if not locale in translations:
		print("warning: there is no locale '%s' for id '%s'" % [locale, id])
		return id

	var trans:String = translations[locale]
	print("id '%s' sucessfully translated on locale '%s' to '%s'" % [id, locale, trans])
	print(translations)
	print(strings_dict)
	return trans