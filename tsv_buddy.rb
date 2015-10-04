
# Module that can be included (mixin) to create and parse TSV data
module TsvBuddy
  # @data should be a data structure that stores information
  #  from TSV or Yaml files. For example, it could be an Array of Hashes.
  attr_accessor :data

  # take_tsv: converts a String with TSV data into @data
  # parameter: tsv - a String in TSV format
  def take_tsv(tsv)
    @data = []
    tsv_lines = tsv.split("\n")    
    keys = tsv_lines[0].split("\t")
    tsv_lines.shift
    tsv_lines.each do |line|
      values = line.split("\t")
      record = {}
      keys.each_index { |index| record[keys[index].chomp] = values[index].chomp }
      @data << record
    end
    @data
  end

  # to_tsv: converts @data into tsv string
  # returns: String in TSV format
  def to_tsv
    content = @data.map {|id| id.values.join("\t")}
    @data[0].keys.join("\t") + "\n" + content + "\n"
  end

end
