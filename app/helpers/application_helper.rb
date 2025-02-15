module ApplicationHelper
  def flash_class(key)
    case key.to_sym
    when :notice then "alert-success"
    when :alert  then "alert-danger"
    when :warning then "alert-warning" 
    else "alert-info"                  
    end
  end
end
