# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "stashboard_notifier/version"

Gem::Specification.new do |s|
  s.name        = "stashboard_notifier"
  s.version     = StashboardNotifier::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Samuel Mulube"]
  s.email       = ["sam@connectedenvironments.com"]
  s.homepage    = ""
  s.summary     = %q{Simple executable that will send a message to stashboard when called}
  s.description = %q{Installs a simple executable to your path that can be used to send a message to a stashboard instance}

  s.rubyforge_project = "stashboard_notifier"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency("stashboard", [">= 0.0.2"])
  s.add_runtime_dependency("trollop", [">= 1.16.2"])
end
