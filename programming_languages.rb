require 'pry'
def reformat_languages(languages)

languages.each_with_object({}) do | language_type, hash_new|
  style = language_type.first #oo equates the hash with values whose style is oo
  langs = language_type.last #oo equates the hash with values whose style is functional

  langs.each do |spec_lang, lang_char|
    if hash_new[spec_lang]
      hash_new[spec_lang][:style] << style
    else
    hash_new[spec_lang] = { type: lang_char[:type], style: [style]}
#you can make a string an array by calling it inside square brackets
    end
    end
  end
end
