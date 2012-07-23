class FunController < ApplicationController

  def happy
    @time = Time.now
  end

  def laugh
    @who = "'#{params[:name]}'"
    @what = ['laughing', 'crying', 'sleeping'][rand(3)]
  end

  # get '/laugh/:what/with/:name' => 'fun#laugh2'
  def laugh2
    @who = "'#{params[:name]}'"
    @what = params[:what]
    render :laugh
  end

end
