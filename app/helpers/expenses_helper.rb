module ExpensesHelper
  def toeuros(value)
    number_to_currency value, unit: "€", separator: ",", format: "%n%u"
  end

end
