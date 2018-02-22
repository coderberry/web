source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.4.1"

gem "active_link_to",        "1.0.5"
gem "bootsnap",              "1.1.8", require: false
gem "coffee-rails",          "4.2.2"
gem "devise",                "4.3.0"
gem "font-awesome-sass",     "5.0.6"
gem "gretel",                git: "https://github.com/mickro/gretel.git"
gem "jbuilder",              "2.7.0"
gem "komponent",             "1.1.2"
gem "pg",                    "1.0.0"
gem "puma",                  "3.11.2"
gem "rails",                 "5.2.0.rc1"
gem "sass-rails",            "5.0.7"
gem "simple_form",           "3.5.1"
gem "tag_columns",           "0.1.5"
gem "turbolinks",            "5.1.0"
gem "uglifier",              "4.1.6"
gem "webpacker",             "3.2.2"

group :development, :test do
  gem "awesome_print"
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "minitest-reporters"
  gem "pry"
  gem "pry-byebug"
  gem "pry-doc"
  gem "pry-nav"
  gem "pry-rails"
  gem "pry-rescue"
  gem "pry-remote"
  gem "pry-stack_explorer"
  gem "rubocop", require: false
end

group :development do
  gem "annotate"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "model_probe"
  gem "web-console", ">= 3.3.0"
end

group :test do
  gem "capybara", "~> 2.15"
  gem "chromedriver-helper"
  gem "selenium-webdriver"
  gem "simplecov", require: false
  gem "shoulda"
  gem "timecop"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
