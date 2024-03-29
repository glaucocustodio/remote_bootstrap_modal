# Remote Bootstrap Modal
A tiny Rails engine that helps you loading remote links into a bootstrap modal.

It was created based on the following post: https://jtway.co/5-steps-to-add-remote-modals-to-your-rails-app-8c21213b4d0c

## Installation
Add this line to your application's Gemfile:

```sh
bundle add remote_bootstrap_modal
```

## Requirements

- Rails
- Bootstrap

## Usage

1. Make sure you have bootstrap in your application
2. Add this gem to your Gemfile
3. Add the following div `<div id="modal-holder"></div>` to your application layout (the modal will be rendered inside it)
4. Add `//= require remote_bootstrap_modal` to your `app/assets/javascripts/application.js` (after jquery)
5. Set the formats you need to respond with `respond_to` (ex: `respond_to :html, :json`)
6. Call `respond_modal_with` in your controller passing the arguments you need
7. Pass `data: { modal: true }` to links you want to load into a modal (ex: `link_to 'Customers', customers_path, class: 'btn btn-default', data: { modal: true }`)

## Example

```ruby
# app/controllers/messages_controller.rb
class MessagesController < ApplicationController
  respond_to :html, :json

  def new
    @message = Message.new
    respond_modal_with @message
  end

  def create
    @message = Message.create(message_params)
    respond_modal_with @message, location: messages_path
  end

  private

  def set_message
    @message = Message.find(params[:id])
  end

  def message_params
    params.require(:message).permit(:name, :body)
  end
end
```

```ruby
<%# app/views/messages/index.html.erb %>
<%= link_to 'Add Message', new_message_path, class: 'btn', data: { modal: true } %>

<%# app/views/messages/_form.html.erb %>
<%= simple_form_for(@message, remote: request.xhr?, html: { data: { modal: true } }) %>
```

## Customization

It is an engine, you can override any file to customize, you can create a `app/views/layouts/modal.html.erb` for instance with the modal layout you want.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
