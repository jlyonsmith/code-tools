require 'minitest/autorun'

class TestVamper < Minitest::Test
  def setup()
    @bin_dir = File.expand_path(File.join(File.dirname(__FILE__), '../bin'))
  end

  def test_vamper_help
    output = `#{@bin_dir}/vamper --help`
    assert_match /Usage:/, output
  end
end
