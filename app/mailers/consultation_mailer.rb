class ConsultationMailer < ApplicationMailer
  default from: 'your_email@gmail.com' # Ваш email

  def new_consultation(name, phone, comment = nil)
    @name = name
    @phone = phone
    @comment = comment
    mail(to: 'abramova_syu@mail.ru', subject: 'Новая заявка на консультацию') # Почта, на которую будут приходить заявки
  end
end
