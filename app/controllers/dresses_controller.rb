class DressesController < AuthenticatedController
  def index
    @dresses = Dress.all
  end
end
