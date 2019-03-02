module ApplicationHelper
  def tm(model_name, attribute_name = nil)
    if attribute_name.nil?
      I18n.t("activerecord.models.#{model_name}")
    else
      I18n.t("activerecord.attributes.#{model_name}.#{attribute_name}")
    end
  end
  
  # def simple_time(time)
  #   if time.nil?
  #     return ""
  #   else
  #     return time.strftime("%Y-%m-%d %H:%M:%S")
  #   end
  # end

  def simple_time(time)
    time&.strftime("%Y-%m-%d %H:%M:%S")
  end
end
