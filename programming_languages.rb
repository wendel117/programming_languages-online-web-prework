require 'pry'
def reformat_languages(languages)
new_hash = {}
  languages.each do |key, value| #keys = :oo or :functional
    value.each do |progkey, progval| #progkey = :ruby, progval = {}

        progval.each do |type, tval|

            if new_hash.has_key?(progkey)
              new_hash[progkey][:style] << [key]


            else
              new_hash[progkey] = {}
              new_hash[progkey][type] = tval
              new_hash[progkey][:style] = [key]
              
            end
        end
new_hash[progkey][:style] =  new_hash[progkey][:style].flatten
    end #end do
  end #end do

new_hash
end #end def
