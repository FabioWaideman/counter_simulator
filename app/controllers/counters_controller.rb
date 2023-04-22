class CountersController < ApplicationController

  def index
    @counter = Counter.find(1)
  end

  def show
    @counter = Counter.find(params[:id])
    @comb = @counter.field1.product(@counter.field2, @counter.field3, @counter.field4, @counter.field5)
    @check = [@counter.field1, @counter.field2, @counter.field3, @counter.field4, @counter.field5]
  end

  def update
    @counter = Counter.find(1)
    @counter.field1 << params[:counter][:field1] unless params[:counter][:field1] == ''
    @counter.field2 << params[:counter][:field2] unless params[:counter][:field2] == ''
    @counter.field3 << params[:counter][:field3] unless params[:counter][:field3] == ''
    @counter.field4 << params[:counter][:field4] unless params[:counter][:field4] == ''
    @counter.field5 << params[:counter][:field5] unless params[:counter][:field5] == ''
    @counter.save
    redirect_to root_path
  end

  def reset
    @counter = Counter.find(1)
    @counter.field1 = []
    @counter.field2 = []
    @counter.field3 = []
    @counter.field4 = []
    @counter.field5 = []
    @counter.save
    redirect_to @counter
  end

  private

  def counter_params
    params.require(:counter).permit(:field1, :field2, :field3, :field4, :field5)
  end

end
