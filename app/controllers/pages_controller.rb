class PagesController < ApplicationController
  def create_consultation
    # Извлекаем данные из формы
    name = params[:name]
    phone = params[:phone]
    comment = params[:comment]  # Добавляем комментарий из формы

    # Отправляем письмо с именем, телефоном и комментарием
    ConsultationMailer.new_consultation(name, phone, comment).deliver_now

    # Добавьте редирект или ответ
    redirect_to root_path, notice: 'Заявка отправлена.'
  end
end
