art1 = Article.create! name: "Rails 4.0: Release Candidate 1 released!", published: true,  description: <<-ARTICLE
Just in time for the opening of RailsConf, we managed to push out the first release candidate of Rails 4.0. This incorporates no less than 1,368 commits since beta 1. You can see the full list of changes on Github. If you're interested in a high-level review of what's in Rails 4.0, please see the announcement we made for beta 1.
As last time, please give this release candidate an honest try. This is pretty much the version we're going to ship unless people find and report blocking issues. Depending on how much stuff is unearthed, we expect that the final version could drop in as little as 3-4 weeks. Please report all the issues you find on the Rails issue tracker.
ARTICLE
art1.user = User.first
art1.save

art2 = Article.create! name: "Google Summer of Code 2013",published: true, description: <<-ARTICLE
We're pleased to announce, Ruby on Rails has been accepted into Google Summer of Code 2013 as a mentoring organization. What does this mean to you? Potentially, if you're the right person, you can get paid to work on Rails this summer! The "right person" in this case is one who is at least 18 years old (sorry, Google's rule, not ours!) on or before May 27, 2013; a full or part-time college student; and passionate about improving Rails.
We're building a potential list of project ideas on a GitHub wiki, but we welcome other interesting proposals. If your proposal gets accepted, Google will pay you $5000 over the course of three months to work on the code. If you're interested, head over to the GSoC site and start reading about the process. Student applications can be submitted starting April 22 and the deadline is May 3.
ARTICLE
art2.user = User.first
art2.save

art3 = Article.create! name: "[ANN] Rails 3.2.13.rc1 has been released!",published: true, description: <<-ARTICLE
Hey everyone! I am pumped to announce that Rails 3.2.13.rc1 has been released! If no regressions are found I will release 3.2.13 final in two weeks, on March 13, 2013. If you find one, please Open an Issue on GitHub so that I can fix it before the final release.
This is a bugfix release, with 287 commits. There is one big thing that is technically a fix but is sort of a feature: Ruby 2.0 support. Big thanks to Prem Sichanugrist for putting that together! Please give your applications a try on Ruby 2.0 and let me know how that goes.
ARTICLE
art3.user = User.first
art3.save

art4 = Article.create! name: "Lex Luthor",published: false, description: <<-ARTICLE
Lex Luthor is a fictional character, a supervillain who appears in comic books published by DC Comics. He is the archenemy of Superman, and is also a major adversary of Batman and other superheroes in the DC Universe. Created by Jerry Siegel and Joe Shuster, he first appeared in Action Comics #23 (April 1940). Luthor is described as "a power-mad, evil scientist" of high intelligence and incredible technological prowess. (from Wikipedia)
ARTICLE
art4.user = User.first
art4.save
