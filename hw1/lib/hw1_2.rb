class Dessert
  @@name
  @@calories
  def initialize(name, calories)
    @@name = name
    @@calories = calories
  end
  
  def getName()
    return @@name
  end
  
  def setName(newName)
    @@name = newName
  end
  
  def getCalories()
    return @@calories
  end
  
  def setCalories(newCal)
    @@calories = newCal
  end
  
  def healthy?
    if(@@calories < 200)
      return true
    else
      return false
    end
  end
  def delicious?
    if(JellyBean.getFlavor() == "licorice")
      return false
    else
      return true
    end
  end
end

class JellyBean < Dessert
  @@flavor
  def initialize(flavor)
    @@flavor = flavor
    @name = "#{@@flavor} jelly bean"
    @@calories = 5
  end
  
  def getFlavor()
    return @flavor
  end
  
  def setFlavor(newFlav)
    @flavor = newFlav
  end
  
end