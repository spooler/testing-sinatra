task(:tests)             { run_tests "test/**/*_test.rb" }
task(:unit_tests)        { run_tests "test/unit/**/*_test.rb" }
task(:integration_tests) { run_tests "test/integration/*_test.rb"}
task :default => :tests

def run_tests path
  require "cutest"
  Cutest.run(Dir[path])
end