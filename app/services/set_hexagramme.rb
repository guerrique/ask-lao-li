require_relative 'ciel'
require_relative 'terre'
require_relative 'tonnerre'
require_relative 'montagne'
require_relative 'marais'
require_relative 'brume'
require_relative 'eau'
require_relative 'feu'

class SetHexagramme
  def self.call(trig1, trig2)
    if trig1 == 'ciel'
      trig_bas_ciel(trig2)
    elsif trig1 == 'tonnerre'
      trig_bas_tonnerre(trig2)
    elsif trig1 == 'montagne'
      trig_bas_montagne(trig2)
    elsif trig1 == 'marais'
      trig_bas_bois(trig2)
    elsif trig1 == 'brume'
      trig_bas_brume(trig2)
    elsif trig1 == 'eau'
      trig_bas_eau(trig2)
    elsif trig1 == 'feu'
      trig_bas_feu(trig2)
    elsif trig1 == 'terre'
      trig_bas_terre(trig2)
    end
  end
end
