module WelcomeHelper
  def coloring_date(expiration)
    if expiration == Date.current
      "color:green"
    else 
        "color:red"
    end
  end
end
