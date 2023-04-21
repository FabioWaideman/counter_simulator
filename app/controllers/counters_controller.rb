class CountersController < ApplicationController

  def index
    @counter = Counter.find(1)
  end

  def show
    @counter = Counter.find(params[:id])
  end

  def increment
    @counter = Counter.find(1)
    @counter.digit_5 += 1
    if @counter.digit_5 == 26
      @counter.digit_5 = 1
      @counter.digit_4 += 1
      if @counter.digit_4 == 26
        @counter.digit_4 = 1
        @counter.digit_3 += 1
        if @counter.digit_3 == 26
          @counter.digit_3 = 1
          @counter.digit_2 += 1
          if @counter.digit_2 == 26
            @counter.digit_2 = 1
            @counter.digit_1 += 1
            if @counter.digit_1 == 26
              @counter.digit_1 = 1
              @counter.digit_2 = 1
              @counter.digit_3 = 1
              @counter.digit_4 = 1
              @counter.digit_5 = 1
            end
          end
        end
      end
    end
    @counter.save
    redirect_to @counter
  end

  def reset
    @counter = Counter.find(1)
    @counter.digit_1 = 1
    @counter.digit_2 = 1
    @counter.digit_3 = 1
    @counter.digit_4 = 1
    @counter.digit_5 = 1
    @counter.save
    redirect_to @counter
  end
end
