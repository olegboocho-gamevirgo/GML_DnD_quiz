// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function get_string_class(){
	switch(argument[0]){
		case CLASS.barbarian: return "barbarian" break
		case CLASS.bard: return "bard" break
		case CLASS.cleric: return "cleric" break
		case CLASS.druid: return "druid" break
		case CLASS.fighter: return "fighter" break
		case CLASS.monk: return "monk" break
		case CLASS.paladin: return "paladin" break
		case CLASS.ranger: return "ranger" break
		case CLASS.rogue: return "rogue" break
		case CLASS.sorcerer: return "sorcerer" break
		case CLASS.warlock: return "warlock" break
		case CLASS.wizard: return "wizard" break
	}

}


function get_string_spell_skool(){
	switch(argument[0]){
		case SKOOL.abjuration:		return "abjuration" break
		case SKOOL.conjuration:		return "conjuration" break
		case SKOOL.divination:		return "divination" break
		case SKOOL.enchantment:		return "enchantment" break
		case SKOOL.evocation:		return "evocation" break
		case SKOOL.illusion:		return "illusion" break
		case SKOOL.necromancy:		return "necromancy" break
		case SKOOL.transmutation:	return "transmutation" break

	}

}