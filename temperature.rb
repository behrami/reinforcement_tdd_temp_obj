class Temperature

  def initialize(temperature)
    if temperature[:f]
      @Ftemp=temperature[:f]
    elsif temperature[:c]
      @Ctemp=temperature[:c]
    end
  end

  def to_fahrenheit
    if @Ctemp
      return @Ctemp*9.0/5.0+32
    else
      return @Ftemp
    end
  end

  def to_celsius
    if @Ftemp
      return @Ftemp*1.8+32
    else
      return @Ctemp
    end
  end
end
