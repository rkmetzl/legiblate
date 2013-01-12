class Legiblate
  def self.read(description)
    hash_items = {}
    description.split(/<div>(.*)<\/div>\n/).select{|a| !a.empty?}.each do |item|
      key, value = item.split(/<b>(.*):<\/b> (.*)/).select{|a| !a.empty?}
      hash_items[key] = value
    end
    hash_items
  end
end