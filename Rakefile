require 'test/unit'

task default: :sub_class_test_verbose_mode

task :sub_class_test_verbose_mode do
  test_dir = File.join(__dir__, "test")
  auto_runner_opts = ["--verbose"]
  
  Test::Unit::AutoRunner.run(true, test_dir, auto_runner_opts)
end
