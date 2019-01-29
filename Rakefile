require 'test/unit'

task default: :sub_class_test_verbose_mode

task :sub_class_test_verbose_mode do
  auto_runner_opts = [
    '--verbose',
    '--collector=descendant',
  ]
  
  Test::Unit::AutoRunner.run(true, nil, auto_runner_opts) do
    test_dir = File.join(__dir__, 'test')
    
    Dir.glob(File.join(test_dir, '**/*_test.rb')) do |test_file|
      require test_file
    end
    
    puts '---- DESCENDANTS from TestCase class ----'
    puts Test::Unit::TestCase::DESCENDANTS
    puts '-----------------------------------------'
  end
end
