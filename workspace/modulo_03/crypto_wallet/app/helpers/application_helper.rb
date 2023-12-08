module ApplicationHelper
  def date_br(date_us)
    date_us.strftime("%d/%m/%Y")
  end
  
  def ambiente_rails
    if Rails.env.development?
      "Desenvolvimento"
    elsif Rails.env.production?
      "Producão"
    else
      "Teste"
    end
  end
end
