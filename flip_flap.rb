require_relative 'tsv_buddy'

require_relative 'yaml_buddy'

require 'yaml'

class FlipFlap
  # Do NOT create an initialize method
  include TsvBuddy
  # def take_yaml(yml)
  #   @data = YAML.load(yml)
  # end
  #
  # def to_yml
  # 	@data.to_yaml
  # end
  include YamlBuddy
end
