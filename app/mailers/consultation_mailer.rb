class ConsultationMailer < ApplicationMailer
  default from: 'abramova_syu@mail.ru'

  def new_consultation(name, phone, comment = nil)
    @name = name
    @phone = phone
    @comment = comment
    mail(to: 'abramova_syu@mail.ru', subject: 'Новая заявка на консультацию')
  end
end
