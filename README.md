# Remote Bootstrap Modal
A tiny Rails engine that helps you loading remote links into a bootstrap modal.

It was created based on the following post: https://jtway.co/5-steps-to-add-remote-modals-to-your-rails-app-8c21213b4d0c

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'remote_bootstrap_modal'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install remote_bootstrap_modal
```

## Requirements

- Rails
- Bootstrap

## Usage

1. Make sure you have bootstrap in your application
2. Add this gem to your Gemfile
3. Add the following div `<div id="modal-holder"></div>` to your application layout (the modal will be rendered inside it)
4. Add `//= require 'remote_bootstrap_modal/modal.js'` to your `app/assets/javascripts/application.js`
5. Add `include RemoteBootstrapModal::Responder` to your `ApplicationController`
6. Set the formats you need to respond with `respond_to` (ex: `respond_to :html, :json`)
7. Call `respond_modal_with` in your controller passing the arguments you need
8. Pass `data: { modal: true }` to links you want to load into a modal (ex: `link_to 'Customers', customers_path, class: 'btn btn-default', data: { modal: true }`)

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
