class HelloController < ApplicationController
  def index
    @msg1 = 'hello, '
    @msg2 = 'world'
  end
end
