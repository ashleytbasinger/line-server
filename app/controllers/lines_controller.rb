class LinesController < ApplicationController
  
  def show
    line = Line.first.get_line(params[:id].to_i)

    if !line.nil?
      render json: { line: line.chomp }, status: 200
    else
      render json: { message: "Sorry, that line doesn't exist." }, status: 413
    end
  end

end
