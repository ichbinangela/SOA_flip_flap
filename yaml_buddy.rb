module YamlBuddy
  def take_yaml(yml)
    @data = YAML.load(yml)
  end

  def to_yml
    @data.to_yaml
  end
end
