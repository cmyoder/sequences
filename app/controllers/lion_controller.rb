class LionController < ApplicationController
  def guesses
    @first = params["first_number"].to_i
    @second = params["second_number"].to_i
    @third = params["third_number"].to_i

    if @first < @second and @second < @third
      @guess_result = "Yes!"
    else
      @guess_result = "No."
    end

    render("guesses.html.erb")
  end

  def answer
    @rule_guess = params["rule"]

    render("answer.html.erb")
  end
end
