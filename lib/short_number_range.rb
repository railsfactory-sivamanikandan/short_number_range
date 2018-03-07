require "short_number_range/version"

module ShortNumberRange
  def convert_range(options = {})
    delimiter = options[:delimiter] || ','
    short_string = options[:short_string] || '-'
    input = split(delimiter)
    input = input.map(&:to_i).sort
    input.slice_when { |prev, curr| curr != prev.next }.map{ |i| i.length > 1 ? [i.first,i.last].join(" #{short_string} ") : i.join }.join(',')
  end
end
