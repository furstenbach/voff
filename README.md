https://travis-ci.org/furstenbach/voff.svg?branch=map

# VOFF
Voff was built as a one week midcourse project at CraftAcademy. It is an app for finding and organizing dog walking, similar to Airbnb, but for dogs in need of walks.

Installation Requirements

Image Magick needs to be installed in advance
ActiveRecord
You need to set up the following environment variables in a .env file in the root directory:
FACEBOOK_APP_SECRET=XXX_YOUR_FB_SECRET_XXXX AWSSecretKey=XXX_YOUR_AMAZON_WEB_SERVICES_KEY_XXX run bundle
run rake db:create db:migrate
run rails s
Testing

Voff is tested with RSpec/Cucumber. You can run these tests from the command line with:
rspec or cucumber
