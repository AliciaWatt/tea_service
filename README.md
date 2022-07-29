# TeaService

## Welcome to the TeaService API
 + This API was built as part of the take home tech challenge for The Turing School of Software Design's graduation requirements

## Available Endpoints
  + base `/api/v1`

  + Subscriptions
  + Post `/subscriptions`
    + takes customer_id, tea_id, title, price, status, and frequency
    + returns 200 response, creates a subscription for a given tea and customer
  + Patch `/subscriptions/subscription_id`
    + takes subscription_id
    + returns 200 response, changes status from subscribed to unsubscribed
  + Get `/subscriptions`
    + takes customer_id
    + returns JSON payload with two arrays, one with active subs and one with inactive subs, and each subs info is included in the payload
    
    ## Setup
1. Fork and Clone the repo
2. Install gem packages: `$ bundle install`
3. Setup the database: `$ rails db:{drop,create,migrate,seed}`
4. Run `$ bundle exec rspec` to run the full test suite.

## Versions
* Ruby version - 2.7.4
* Rails - 5.2.8
