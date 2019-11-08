
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require_relative "./lib/fitness_supplies/version"

Gem::Specification.new do |spec|
  spec.name          = "fitness_supplies"
  spec.version       = FitnessSupplies::VERSION
  spec.date          = "2019-11-08"
  spec.authors       = ["'Joey Luis Echevarria'"]
  spec.email         = ["'jechevarria719@gmail.com'"]
  spec.files         = ["lib/fitness_supplies.rb", "lib/fitness_supplies/cli.rb", "lib/fitness_supplies/scraper.rb", "lib/fitness_supplies/version.rb", "config/env.rb"]
  spec.summary       = "Search our gym equipment database"
  spec.description   = "Search our gym equipment database with ease"
  spec.homepage      = "https://github.com/Joey0719/Fitness_Supplies.git"
  spec.license       = "MIT"
  spec.executables << "fitness_supplies"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end

 # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  #spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
   # `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  #end
  #spec.bindir        = "exe"
  #spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  #spec.require_paths = ["lib"]
  
  
  
  
  
  
  