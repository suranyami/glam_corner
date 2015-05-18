class DressesController < AuthenticatedController
  def index
    respond_to do |format|
      format.html
      format.json {render json: DressDatatable.new(view_context)}
    end
  end
end
