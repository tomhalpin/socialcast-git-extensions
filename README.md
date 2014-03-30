# socialcast-git-extensions

== Installation

Download Gem @ http://www.perigeeglobal.net/tools/socialcast-git-extensions-3.1.2.gem

=== Windows
* Install Ruby using the RubyInstaller download @ http://rubyinstaller.org/downloads/
* Install Ruby Development Kit @ http://rubyinstaller.org/downloads/ to c:/DevKit (Enable option to include Ruby in your PATH)
* Open a command prompt and execute:
    cd c:/DevKit
    ruby dk.rb init
    ruby dk.rb install
* Change to another temporary folder
    git clone git@github.com:tomhalpin/socialcast-git-extensions.git scgitx
    cd scgitx
    gem build socialcast-git-extensions.gemspec
    gem install socialcast-git-extensions-3.1.5.gem

=== OSX
* Install Xcode, including the Command Line Utilities
* Install RVM with Ruby 1.9.3 using the following command:
    curl -L https://get.rvm.io | bash -s stable --ruby-1.9.3
* Execute the following:
    git clone git@github.com:tomhalpin/socialcast-git-extensions.git scgitx
    cd scgitx
    gem build socialcast-git-extensions.gemspec
    gem install socialcast-git-extensions-3.1.5.gem

== Configure Socialcast
* Connect to the your Socialcast community by executing the following command
    socialcast authenticate --domain <subdomain>.socialcast.com
Enter your username and password when prompted.

== Configure Github
* It is advised to use the SSH method with Github to avoid having to store credentials in plaintext - see https://help.github.com/articles/why-is-git-always-asking-for-my-password
* Store your Github username (used for the reviewrequest feature) by executing the following command
    git config --global github.user username


= Core Git Extensions

### Install
  socialcast authenticate --domain (your domain)

### Options
* ```--quiet```: suppress posting message in Socialcast

## git start <new_branch_name (optional)>

update local repository with latest upstream changes and create a new feature branch

## git update

update the local feature branch with latest remote changes plus upstream released changes.

## git integrate <aggregate_branch_name (optional, default: prototype)>

integrate the current feature branch into an aggregate branch (ex: prototype, staging)

## git findpr <commit_hash>

Find pull requests on github including a given commit

## git reviewrequest

create a pull request on github for peer review of the current branch.

### Optional:
Specify a Review Buddy mapping that will reference the local Github username and @mention a pre-assigned review buddy in the Socialcast Review Request message.  Specify the mapping by creating a .scgitx YML file relative to the Repo Root: config/scgitx.yml with the following format:

```yaml
review_buddies:
    emilyjames: # Github Username "emilyjames"
      socialcast_username: "EmilyJames" # Socialcast UserName
      buddy: bobdavis # Buddy's Github username
    bobdavis:
      socialcast_username: "BobDavis"
      buddy: emilyjames
```

In this example, when Emily runs `git reviewrequest` from her local machine, @BobDavis will receive an @mention in Socialcast notifying him to review her branch.  If Bob runs the command, Emily will receive a notice in Socialcast.

Additionally you can specify a specialty reviewer, such that you can
notify individuals in your organization with a specific skill set. Like Security, or API's

``` yaml
specialty_reviewers:
  a:
    label: API
    command: (a)pi
    socialcast_username: JohnSmith
  s:
    label: Security
    command: (s)ecurity
    socialcast_username: KellyWilliams
```

## git release

release the current feature branch to master

= Extra Git Extensions

## git cleanup

delete released branches after they have been merged into master.

## git nuke <aggregate_branch_name>

reset an aggregate branch (ex: prototype, staging) back to a known good state.

== Copyright

Copyright (c) 2010 Socialcast, Inc. See LICENSE for details.
