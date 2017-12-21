module ApplicationHelper

  def yield_with_default(holder, default)
    if content_for?(holder)
      content_for(holder).squish
    else
      default
    end
  end

  def bootstrap_class_for(flash_type)
    case flash_type
    when :success   then "alert-success"
    when :info  then "alert-info"
    when :warning   then "alert-warning"
    when :danger  then "alert-danger"
    end
  end

end
