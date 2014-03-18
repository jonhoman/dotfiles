if ENV.include?('RAILS_ENV')

  if ENV['INLINE_LOGGING'] && !Object.const_defined?('RAILS_DEFAULT_LOGGER')
    require 'logger'
    Object.const_set('RAILS_DEFAULT_LOGGER', Logger.new(STDOUT))
  end
  
  def enable_factories
    require 'factory_girl'
    Factory.definition_file_paths = [
      Rails.root.join("test/factories"),
      Rails.root.join("spec/factories")
    ]
    Factory.find_definitions
  end

end
