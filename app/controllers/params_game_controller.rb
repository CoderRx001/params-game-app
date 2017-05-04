class ParamsGameController < ApplicationController
  
  def query
    @message = params["my_message"].upcase
  end

end
