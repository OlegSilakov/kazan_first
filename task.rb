class Sequence
  def self.create_sequence(start_str, count)
    iterator = start_str
    count.times do
      puts iterator
      iterator = look_and_say(iterator)
    end
  end

  def self.look_and_say(str)
    str.gsub(/(.)\1*/).map { |x| x.size.to_s + x[0] }.join
  end
end