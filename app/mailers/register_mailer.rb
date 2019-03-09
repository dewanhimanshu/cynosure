class RegisterMailer < ApplicationMailer

    def welcome_email
        @name = params[:name]
        @email  = params[:email]
        mail(to: @email, subject: 'Thankyou See you at Cynosure19')
      end

    def hack
      @name = params[:name]
      @email  = params[:email]
      mail(to: @email, subject: 'Thankyou Hacker , See you at Hackathon')
    end

    def reminder
      @name = params[:name]
      @email  = params[:email]
      mail(to: @email, subject: 'Reminder')
    end
end
