module WelcomeHelper
  def coloring_date(expiration)
    return unless expiration # if expiration == nil
                             #   return nil
                             # end
    case
    when expiration > Date.current && expiration < Date.current + 7
      "color:blue"
    when expiration == Date.current
      "color:green"
    when expiration < Date.current
      "color:red"
    end
  end
end
