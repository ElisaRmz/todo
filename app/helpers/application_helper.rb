module ApplicationHelper
  def coloring_date(expiration, finish)
    return unless expiration
                             # if expiration == nil
                             #   return nil
                             # end
    case
    when finish == true
      "background-color:lightgrey"
    when expiration > Date.current && expiration < Date.current + 7
      "color:blue"
    when expiration == Date.current
      "color:green"
    when expiration < Date.current
      "color:red"
    end
  end

  def coloring_background(finish, inactive)
    case 
    when finish == true
        "background-color:lightgrey"
    when inactive == true 
      "background-color:lightyellow"
    end
  end
  
end
