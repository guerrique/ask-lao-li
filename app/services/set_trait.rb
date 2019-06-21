class SetTrait
  def self.call(lancers)
    traits = lancers.each_slice(3).to_a
    traits.map! do |lancer|
      lancer.sort!
      if lancer == %w[face pile pile]
        'yang'
      elsif lancer == %w[face face face]
        'yang mutant'
      elsif lancer == %w[face face pile]
        'yin'
      elsif lancer == %w[pile pile pile]
        'yin mutant'
      end
    end
  end
end
