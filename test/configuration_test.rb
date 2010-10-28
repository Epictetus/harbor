require "pathname"
require Pathname(__FILE__).dirname + "helper"

class ConfigurationTest < Test::Unit::TestCase
  
  # config.data.connection_string = "postgres://localhost/demo"
  # 
  # config.controllers.admin.photos.show(*args)
  # 
  # config.views
  # config.routes
  # config.hostname
  # config.mail.server
  
  def test_container_is_present
    assert_kind_of(Harbor::Configuration, config)
  end

  def test_debug_default
    assert(!config.debug?)
  end
  
  def test_default_locale_is_english
    assert_equal(config.locales.default, Harbor::Locale["en-US"])
  end
  
  def test_default_cache_is_present
    assert_kind_of(Harbor::Cache, config.cache)
  end
  
  def test_hostname_is_present
    assert_equal(`hostname`.strip, config.hostname)
  end
  
  def test_method_missing_setter
    assert_nothing_raised do
      config.test_setter = true
    end
    
    assert(config.test_setter)
  end
end