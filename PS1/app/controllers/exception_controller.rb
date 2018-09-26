class ExceptionController < ApplicationController

  def divide_by_zero
    logger.debug "IT'S A TRAP!"
    a = 5/0
  end
end
