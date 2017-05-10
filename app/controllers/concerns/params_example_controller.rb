class ParamsExampleController < ApplicationController

  def query
    @message = params["my_message"]
    @message_2 = params["other_message"]
    
  end

  def url_names_2
    if params["this_is_a_key"] #params treats the url as a string
      @name = params["this_is_a_key"].upcase
    end

    if @name.first.upcase == "A"
      @message = "Hey your name starts with A!"
    end
  end

  def url_segment
    @message = params["this_is_a_key"]
  end

  def name
    if params["title"]
      @name = params["title"].upcase
    end

    if @name.first.upcase == "A"
      @message = "Hey your name starts with A!"
    end
  end
      # puts "Please enter your name."
      # x = gets.chomp

      # if x == [A]
      # puts "Hey, your name starts with the first letter of the alphabet!"
      # end    

      # elsif x == [B..Z]
      # end

  def guess
    @user_guess = params["submission"].to_i
    winning_number = 42

    @answer_message = "too high."

    if winning_number < @user_guess
      @answer_message = "too high."
    elsif winning_number > @user_guess
      @answer_message = "too low."
    else
      @answer_message = "right on the money! ! !"
    end
  end

  def segment_guess
    @user_guess = params["turkey"].to_i
    winning_number = 42

    @answer_message = "too high."

    if winning_number < @user_guess
      @answer_message = "too high."
    elsif winning_number > @user_guess
      @answer_message = "too low."
    else
      @answer_message = "right on the money! ! !"
    end
  end

  def form_show
    
  end

  def form_send
    @message = params["form_message"]
  end

  def form_guess_send
    @user_guess = params["guess"].to_i
    winning_number = 42

    @answer_message = "too high."

    if winning_number < @user_guess
      @answer_message = "too high."
    elsif winning_number > @user_guess
      @answer_message = "too low."
    else
      @answer_message = "right on the money! ! !"
    end
    render 'form_guess_send'
  end

end
