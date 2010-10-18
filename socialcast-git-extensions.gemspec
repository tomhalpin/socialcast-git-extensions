# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{socialcast-git-extensions}
  s.version = "1.4.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ryan Sonnek"]
  s.date = %q{2010-10-18}
  s.description = %q{git extension scripts for socialcast workflow}
  s.email = %q{ryan@socialcast.com}
  s.executables = ["git-integrate", "git-promote", "git-prune-merged", "git-release", "git-release-staging", "git-reset-prototype", "git-start", "git-track", "git-update", "git-wtf"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "bin/git-integrate",
     "bin/git-promote",
     "bin/git-prune-merged",
     "bin/git-release",
     "bin/git-release-staging",
     "bin/git-reset-prototype",
     "bin/git-start",
     "bin/git-track",
     "bin/git-update",
     "bin/git-wtf",
     "lib/socialcast-git-extensions.rb",
     "socialcast-git-extensions.gemspec",
     "test/helper.rb",
     "test/test_socialcast-git-extensions.rb"
  ]
  s.homepage = %q{http://github.com/wireframe/socialcast-git-extensions}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{git extension scripts for socialcast workflow}
  s.test_files = [
    "test/helper.rb",
     "test/test_socialcast-git-extensions.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<thoughtbot-shoulda>, [">= 0"])
      s.add_runtime_dependency(%q<grit>, [">= 0"])
      s.add_runtime_dependency(%q<wireframe-jira4r>, [">= 0"])
      s.add_runtime_dependency(%q<activesupport>, [">= 0"])
      s.add_runtime_dependency(%q<git_remote_branch>, [">= 0"])
      s.add_runtime_dependency(%q<highline>, [">= 0"])
    else
      s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
      s.add_dependency(%q<grit>, [">= 0"])
      s.add_dependency(%q<wireframe-jira4r>, [">= 0"])
      s.add_dependency(%q<activesupport>, [">= 0"])
      s.add_dependency(%q<git_remote_branch>, [">= 0"])
      s.add_dependency(%q<highline>, [">= 0"])
    end
  else
    s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
    s.add_dependency(%q<grit>, [">= 0"])
    s.add_dependency(%q<wireframe-jira4r>, [">= 0"])
    s.add_dependency(%q<activesupport>, [">= 0"])
    s.add_dependency(%q<git_remote_branch>, [">= 0"])
    s.add_dependency(%q<highline>, [">= 0"])
  end
end

