require 'test/unit'

desc 'auto runnder collector load(default)'
task :collector_load do
  test_dir = File.join(__dir__, 'test')
  auto_runner_opts = [
    '--verbose',
  ]
  
  Test::Unit::AutoRunner.run(true, test_dir, auto_runner_opts)
end

task default: :collector_descendant

desc 'auto runner collector descendant'
task :collector_descendant do
  auto_runner_opts = [
    '--verbose',
    '--collector=descendant',
  ]
  
  Test::Unit::AutoRunner.run(true, nil, auto_runner_opts) do
    test_dir = File.join(__dir__, 'test')
    
    Dir.glob(File.join(test_dir, '**/*.rb')) do |f|
      require f
    end

    # puts '---- DESCENDANTS from TestCase class ----'
    # puts Test::Unit::TestCase::DESCENDANTS
    # puts '-----------------------------------------'
  end
end
