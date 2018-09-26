require 'responders'

module RemoteBootstrapModal
  module Responder
    extend ActiveSupport::Concern

    def respond_modal_with(*args, &blk)
      options = args.extract_options!
      options[:responder] = ModalResponder
      respond_with *args, options, &blk
    end
  end
end
