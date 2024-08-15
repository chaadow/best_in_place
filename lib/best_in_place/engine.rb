module BestInPlace
  class Engine < Rails::Engine
    initializer 'best_in_place' do
      ActiveSupport.on_load(:action_view) { include BestInPlace::Helper }
      ActiveSupport.on_load(:action_controller_base) { include BestInPlace::ControllerExtensions }
    end
  end
end
