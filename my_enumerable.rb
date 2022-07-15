module MyEnumerable
  def all?(&block)
    each do |el|
      return false unless block.call(el)
    end
    true
  end

  def any?(&block)
    each do |el|
      return true if block.call(el)
    end
    false
  end

  def filter(&block)
    array = []
    each { |el| array.push(el) if block.call(el) }
    array
  end
end
