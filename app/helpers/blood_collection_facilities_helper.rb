module BloodCollectionFacilitiesHelper
  OPENING_HOURS_ORDER = %w[monday tuesday wednesday thursday friday saturday sunday].freeze
  ADDRESS_ORDER       = %w[street zip city state].freeze

  def print_opening_hours(opening_hours)
    content = []
    OPENING_HOURS_ORDER.each do |day|
      content << content_tag(:p, "#{day.capitalize}: #{opening_hours.fetch(day)}")
    end

    content.join.html_safe
  end

  def print_address(address)
    content = []
    ADDRESS_ORDER.each do |day|
      content << content_tag(:p, "#{day.capitalize}: #{address.fetch(day)}")
    end

    content.join.html_safe
  end
end