--[[
	Generated from https://translate.google.com
	The languages that Google Translate supports (as of 7/5/2020) alongside
	their ISO 639-1 codes
	
	see https://cloud.google.com/translate/docs/languages
	see https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes
	
	Translated to LuaU by @Darkceius
]]

local languages = {
	["auto"] = "Automatic",
	["af"] = "Afrikaans",
	["sq"] = "Albanian",
	["am"] = "Amharic",
	["ar"] = "Arabic",
	["hy"] = "Armenian",
	["az"] = "Azerbaijani",
	["eu"] = "Basque",
	["be"] = "Belarusian",
	["bn"] = "Bengali",
	["bs"] = "Bosnian",
	["bg"] = "Bulgarian",
	["ca"] = "Catalan",
	["ceb"] = "Cebuano",
	["ny"] = "Chichewa",
	["zh-cn"] = "Chinese Simplified",
	["zh-tw"] = "Chinese Traditional",
	["co"] = "Corsican",
	["hr"] = "Croatian",
	["cs"] = "Czech",
	["da"] = "Danish",
	["nl"] = "Dutch",
	["en"] = "English",
	["eo"] = "Esperanto",
	["et"] = "Estonian",
	["tl"] = "Filipino",
	["fi"] = "Finnish",
	["fr"] = "French",
	["fy"] = "Frisian",
	["gl"] = "Galician",
	["ka"] = "Georgian",
	["de"] = "German",
	["el"] = "Greek",
	["gu"] = "Gujarati",
	["ht"] = "Haitian Creole",
	["ha"] = "Hausa",
	["haw"] = "Hawaiian",
	["iw"] = "Hebrew",
	["hi"] = "Hindi",
	["hmn"] = "Hmong",
	["hu"] = "Hungarian",
	["is"] = "Icelandic",
	["ig"] = "Igbo",
	["id"] = "Indonesian",
	["ga"] = "Irish",
	["it"] = "Italian",
	["ja"] = "Japanese",
	["jw"] = "Javanese",
	["kn"] = "Kannada",
	["kk"] = "Kazakh",
	["km"] = "Khmer",
	["ko"] = "Korean",
	["ku"] = "Kurdish (Kurmanji)",
	["ky"] = "Kyrgyz",
	["lo"] = "Lao",
	["la"] = "Latin",
	["lv"] = "Latvian",
	["lt"] = "Lithuanian",
	["lb"] = "Luxembourgish",
	["mk"] = "Macedonian",
	["mg"] = "Malagasy",
	["ms"] = "Malay",
	["ml"] = "Malayalam",
	["mt"] = "Maltese",
	["mi"] = "Maori",
	["mr"] = "Marathi",
	["mn"] = "Mongolian",
	["my"] = "Myanmar (Burmese)",
	["ne"] = "Nepali",
	["no"] = "Norwegian",
	["ps"] = "Pashto",
	["fa"] = "Persian",
	["pl"] = "Polish",
	["pt"] = "Portuguese",
	["pa"] = "Punjabi",
	["ro"] = "Romanian",
	["ru"] = "Russian",
	["sm"] = "Samoan",
	["gd"] = "Scots Gaelic",
	["sr"] = "Serbian",
	["st"] = "Sesotho",
	["sn"] = "Shona",
	["sd"] = "Sindhi",
	["si"] = "Sinhala",
	["sk"] = "Slovak",
	["sl"] = "Slovenian",
	["so"] = "Somali",
	["es"] = "Spanish",
	["su"] = "Sundanese",
	["sw"] = "Swahili",
	["sv"] = "Swedish",
	["tg"] = "Tajik",
	["ta"] = "Tamil",
	["te"] = "Telugu",
	["th"] = "Thai",
	["tr"] = "Turkish",
	["uk"] = "Ukrainian",
	["ur"] = "Urdu",
	["uz"] = "Uzbek",
	["vi"] = "Vietnamese",
	["cy"] = "Welsh",
	["xh"] = "Xhosa",
	["yi"] = "Yiddish",
	["yo"] = "Yoruba",
	["zu"] = "Zulu"
}

function getISOCode(language: string): string | nil
	for i, v in pairs(languages) do
		if string.lower(i) == string.lower(language) then
			return i
		end
	end
	return nil
end

function isSupported(language: string): boolean
	return getISOCode(language) ~= nil
end

return {
	getISOCode = getISOCode,
	isSupported = isSupported,
}