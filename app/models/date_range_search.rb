class DateRangeSearch
  
  attr_reader :date_from, :date_to

  def initialize(date_range)
    #params[:date_range]
    date_range ||= {}
    @date_from = parsed_date(date_range[:date_from], 1.year.ago.to_date.to_s)
    @date_to = parsed_date(date_range[:date_to], Date.today.to_s)
  end
  # define date range query scope
  def scope
    Article.where('created_at BETWEEN ? AND ?', @date_from, @date_to)
  end

  private
  # convert date format
  def parsed_date(date_string, default)
    Date.parse(date_string)
  rescue ArgumentError, TypeError
    default
  end
end