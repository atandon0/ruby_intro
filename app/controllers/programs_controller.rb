class ProgramsController < ApplicationController
  def home
    # Your code goes below.


    r_p_s = ["rock", "paper", "scissors"].sample

    @program_choice = "The program chooses " + r_p_s

    if r_p_s == "rock"
      @your_output =  "This is a tie. Let's refresh and play again"
    elsif r_p_s == "scissors"
      @your_output = "I don't like losing. TERMINATE"
    else
      @your_output = "HAHA! I WIN!!!"
    end

      first = "Mac"
      last = "Overlord"

      @first_then_last = first + " " + last



      render("programs/home.html.erb")
    end

    def first_program
      # Your code goes below.

      @your_output = "Replace this string with your output"

      render("programs/first_program.html.erb")
    end

    def second_program
      # Your code goes below.

      our_numbers = [4, 10, 6] #create an array of numbers
      squared_numbers = [] #empty array

      our_numbers.each do |num|
        square = num * num
        squared_numbers.push(square)
      end


      @your_output = squared_numbers.sum # Sum the squares

      render("programs/second_program.html.erb")
    end

    def third_program
      numbers = (1..999).to_a

      # Your code goes below.

      multiples = []

      numbers.each do |num|
        if num%3 == 0 || num%5 == 0
          multiples.push(num)
        else trash_var = 0
        end
      end

      @your_output = multiples.sum

      render("programs/third_program.html.erb")
    end
  end
