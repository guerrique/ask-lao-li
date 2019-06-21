class SetPerspective
  def self.call(traits)
    traits.map! do |trait|
      if trait == 'yin mutant'
        trait = 'yang'
      elsif trait == 'yang mutant'
        trait = 'yin'
      end
      trait
    end
    traits
    trig_bas = TrigName.call([traits[0], traits[1], traits[2]])
    trig_haut = TrigName.call([traits[3], traits[4], traits[5]])
    hexrep = SetHexagramme.call(trig_bas, trig_haut)
    return hexrep
  end
end
