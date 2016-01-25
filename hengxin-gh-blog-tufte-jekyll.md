# Configure "hengxin-gh-blog-tufte-jekyll"

The document keeps records of configurations of [my blog]() rendered by Jekyll with the fancy 
[tufte-jekyll](https://github.com/clayh53/tufte-jekyll) theme. 

## Clone `tufte-jekyll`

[tufte-jekyll](https://github.com/clayh53/tufte-jekyll) is a Minimal Jekyll blog styled to resemble the 
look and layout of Edward Tufte's books.

- `git clone https://github.com/clayh53/tufte-jekyll.git hengxin-gh-blog-tufte-jekyll`

## Install Runtime Environment

### Install Ruby

As of writing (2016-01-25), the current stable version of Ruby is 2.3.0.
I install Ruby 2.3.0 by following the [instructions@stackoverflow](http://stackoverflow.com/a/21067059/1833118):

- `sudo apt-add-repository ppa:brightbox/ruby-ng`
- `sudo apt-get update`
- `sudo apt-get install ruby2.3 ruby2.3-dev`

Validation:

- `ruby --version` shows `ruby 2.3.0p0 (2015-12-25 revision 53290) [x86_64-linux-gnu]`.
- `which ruby` shows `/usr/bin/ruby`

*Note:* The instruction `sudo apt-get install ruby-full` of [ruby-installation](https://www.ruby-lang.org/en/documentation/installation/#apt)
installs Ruby `ruby 2.1.5p273 (2014-11-13) [x86_64-linux-gnu]`.

### Install Bundler

- `sudo gem install bundler`
- `sudo apt-get install zlib1g-dev` (Optional)
- `bundler update`

> ***Important Note:*** Before `bundler update`, you may need `sudo apt-get install zlib1g-dev`. 
This may avoid a potential error "zlib is missing; necessary for building libxml2" in `bundler update`. 
Refer to [solution given by @Heshuge](https://github.com/flapjack/omnibus-flapjack/issues/72).

### Install Jekyll

There are two ways of installing [Jekyll](https://jekyllrb.com/).

#### Install github-pages

- `sudo gem install github-pages`

What I get is `Successfully installed github-pages-43` (2016-01-25).

*Note:* You are not required to install Jekyll separately. Once the github-pages gem is installed, 
you can build your site using `jekyll build`, or preview your site using `jekyll serve`.

> Refer to [github/pages-gem](https://github.com/github/pages-gem).

#### Install Jekyll locally

- Creating a file in your site's repository called `Gemfile`
- Adding the line `gem 'github-pages'`
- Running `bundle update`
- Running `bundle install`

> Refer to [Using Jekyll with Pages](https://help.github.com/articles/using-jekyll-with-pages/).

Currently (2016-01-25), the content of my `Gemfile` is:
```
source 'https://rubygems.org'

gem 'jekyll'
gem 'rouge'
gem 'github-pages'
```
### Install NodeJS

Install NodeJS as a JavaScript runtime environment for the server to start.

- `sudo add-apt-repository ppa:chris-lea/node.js`
- `sudo apt-get -y update`
- `sudo apt-get -y install nodejs`

> Refer to [Could not find a JavaScript runtime@stackoverflow](http://stackoverflow.com/a/16846192/1833118).

## Locally Build and Preview `tufte-jekyll`

In the site directory (it is `hengxin-gh-blog-tufte-jekyll` for me):

- `jekyll build`
- `jekyll serve -w`

It gives:

```
Configuration file: PWD/_config.yml
            Source: PWD
       Destination: PWD/_site
      Generating... 
                    done.
 Auto-regeneration: enabled for 'PWD'
Configuration file: PWD/_config.yml
    Server address: http://0.0.0.0:4000/tufte-jekyll/
  Server running... press ctrl-c to stop.
```

Then, go to `http://0.0.0.0:4000/tufte-jekyll/` via browser for local preview.

## Post 

## Host `tufte-jekyll` on GitHub
