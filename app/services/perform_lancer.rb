class PerformLancer
  def self.call
    piece = %w[pile face]
    result = []
    3.times do
      result << piece.sample
    end
    result
  end
end
