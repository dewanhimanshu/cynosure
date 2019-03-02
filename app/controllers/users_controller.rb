class UsersController < ApplicationController

    def complete1
        current_user.event1 = true
        current_user.save
    end

    def complete2
      
        if current_user.event1 == false
           return render :json => {
                smart:'Yr Event1 Phele Karlo Please ',
                link:'bugevent/index'
              }
        end
        
        if params[:password] != current_user.token
            return render :json => {
                smart:'Looks like you are OverSmart But Your Ans Is Wrong'
              }
        else
            current_user.event2 = true
            current_user.save
          return  render :json =>{
                ans:'success',
                link:'users/event3'
            }
        end
    end

    def event2
        current_user.token =  SecureRandom.uuid
        current_user.save
        cookies[:password] =  current_user.token
    end


    def event3
       @token = current_user.token
       
    end



    def complete3
        
        if params[:ans] = 'Wow! I am The Winner Of it ...'
            user = User.find_by(token:params[:token])
            if user != nil
            Winner.create(user_id:user.id)
            render :json=>{
                contact:'WhatsApp on 8383006342',
                code:'I have a crush on You !!'
            }
            else
                render :json=>{
                    token:"Dekh Bahi Token De"
                }
        end

        else
            render :json=>{
                token:"Dekh Bahi Masti Na Rak "
            }  
        end   
    end


end
