def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, languages|
    languages.each do |lang|
      if new_hash.keys.include?(lang[0])
        new_hash[lang[0]][:style] << style
      else
        new_hash[lang[0]] = { lang[1].keys[0] => lang[1].values[0],:style => [style] }
      end
    end
  end
  new_hash
end
