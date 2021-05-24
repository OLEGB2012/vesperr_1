class Contact < MailForm::Base
  attribute :name
  attribute :email
  attribute :subject
  attribute :message

  def headers
    {
      subject: "#{subject}",
      from: %("#{name}" <#{email}>),
      to: ENV['GMAIL_USERNAME']
    }
  end
end