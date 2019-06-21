class StringifyTraits
  def self.call(collection)
    reply = []
    collection.each do |truc|
      reply << truc.nom
    end
    reply.join(', ')
  end
end
