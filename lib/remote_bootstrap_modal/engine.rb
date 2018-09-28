module RemoteBootstrapModal
  class Engine < ::Rails::Engine
    isolate_namespace RemoteBootstrapModal

    initializer "remote_bootstrap_modal.load_responder" do |app|
      ActionController::Base.send :include, RemoteBootstrapModal::Responder
    end
  end
end
