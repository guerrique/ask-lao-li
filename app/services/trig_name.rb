class TrigName
  def self.call(trig)
    trig.map! do |yy|
      yy.chomp(' mutant')
    end
    if trig == %w[yang yang yang]
      'ciel'
    elsif trig == %w[yin yin yin]
      'terre'
    elsif trig == %w[yin yang yin]
      'eau'
    elsif trig == %w[yang yin yang]
      'feu'
    elsif trig == %w[yin yin yang]
      'montagne'
    elsif trig == %w[yang yin yin]
      'tonnerre'
    elsif trig == %w[yang yang yin]
      'brume'
    elsif trig == %w[yin yang yang]
      'bois'
    end
  end
end
