class CalculationsController < ApplicationController
  def flex_square
    #params = {"The number" => "17"}
    @user_provided_number = params["the_number"].to_f
    @squared_number = @user_provided_number**2
    render("calculations/flex_square.html.erb")
  end

  def flex_square_root
    #params = {"The number" => "17"}
    @user_provided_number = params["the_number"].to_f
    @squared_number = Math.sqrt(@user_provided_number).round(4)
    render("calculations/flex_square_root.html.erb")
  end

  def square_form
      render("calculations/square_form.html.erb")
  end

  def square
    @user_provided_number = params["user_provided_number"].to_f
    @squared_number = @user_provided_number**2
    render("calculations/square.html.erb")
  end

  def square_root_form
    render("calculations/square_root_form.html.erb")
  end

  def square_root
    @user_provided_number = params["user_provided_number"].to_f
    @square_root_number = Math.sqrt(@user_provided_number).round(4)
    render("calculations/square_root.html.erb")
  end

  def payment_form
    render("calculations/payment_form.html.erb")
  end

  def payment
    @rate = params["APR"].to_f
    @rate = @rate/(100*12)
    @n = params["years"].to_f
    @n = @n*12
    @pv = params["principal"].to_f
    @payment = @rate*@pv/(1-(1+@rate)**(-@n))
    @payment = @payment.round(2)
    render("calculations/payment.html.erb")
  end

  def random_form
    render("calculations/random_form.html.erb")
  end

  def random
    @minimum = params["Minimum"].to_i
    @maximum = params["Maximum"].to_i
    @random_number = rand(@minimum..@maximum)
    render("calculations/random.html.erb")
  end

  def flex_payment
    @rate = params["basis_points"].to_f
    @rate = @rate/(100*100*12)
    @n = params["number_of_years"].to_f
    @n=@n*12
    @pv = params["present_value"].to_f
    @payment = @rate*@pv/(1-(1+@rate)**(-@n))
    @payment = @payment.round(2)
    render("calculations/flex_payment.html.erb")
    #@squared_number = @user_provided_number**2
    #render("calculations/square.html.erb")
  end

  def random_generator
    #params = from server log
    @minimum = params["min"].to_i
    @maximum = params["max"].to_i
    @random_number = rand(@minimum..@maximum)
    render("calculations/random_generator.html.erb")
  end

end
