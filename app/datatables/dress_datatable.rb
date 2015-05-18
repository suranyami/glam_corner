class DressDatatable < AjaxDatatablesRails::Base
  include AjaxDatatablesRails::Extensions::WillPaginate

  # helper methods
  def_delegators :@view,
    :link_to,
    :h,
    :mailto,
    :material_path,
    :user_path,
    :language_path,
    :playback,
    :generate_map_link,
    :can_update,
    :can_delete,
    :current_user

  def sortable_columns
    # Declare strings in this format: ModelName.column_name
    @sortable_columns ||= []
  end

  def searchable_columns
    # Declare strings in this format: ModelName.column_name
    @searchable_columns ||= []
  end

  private

  def data
    records.map do |record|
      [
        # comma separated list of the values for each cell of a table row
        # example: record.attribute,
      ]
    end
  end

  def get_raw_records
    # insert query here
  end

  # ==== Insert 'presenter'-like methods below if necessary
end
