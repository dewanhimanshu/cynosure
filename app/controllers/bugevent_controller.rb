class BugeventController < ApplicationController
  def index
  end

  def link
    render :json => {
    message:'Welocme Hacker !!',
    important:'Login to enter the contest',  
    link:'/bugevent/getlikes'
    
    }

    def getlikes
      
    end


  end
end
