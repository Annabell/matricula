# RailsAdmin config file. Generated on May 16, 2013 20:47
# See github.com/sferik/rails_admin for more informations

RailsAdmin.config do |config|


  ################  Global configuration  ################

  #Authorization
  config.authorize_with :cancan

  # Set the admin name here (optional second array element will appear in red). For example:
  config.main_app_name = ['Matricula', 'Admin']
  # or for a more dynamic name:
  # config.main_app_name = Proc.new { |controller| [Rails.application.engine_name.titleize, controller.params['action'].titleize] }

  # RailsAdmin may need a way to know who the current user is]
  config.current_user_method { current_user } # auto-generated

  # If you want to track changes on your models:
  # config.audit_with :history, 'User'

  # Or with a PaperTrail: (you need to install it first)
  # config.audit_with :paper_trail, 'User'

  # Display empty fields in show views:
  # config.compact_show_view = false

  # Number of default rows per-page:
  # config.default_items_per_page = 20

  # Exclude specific models (keep the others):
  # config.excluded_models = []

  # Include specific models (exclude the others):
  # config.included_models = []

  # Label methods for model instances:
  # config.label_methods << :description # Default is [:name, :title]


  ################  Model configuration  ################

  # Each model configuration can alternatively:
  #   - stay here in a `config.model 'ModelName' do ... end` block
  #   - go in the model definition file in a `rails_admin do ... end` block

  # This is your choice to make:
  #   - This initializer is loaded once at startup (modifications will show up when restarting the application) but all RailsAdmin configuration would stay in one place.
  #   - Models are reloaded at each request in development mode (when modified), which may smooth your RailsAdmin development workflow.


  # Now you probably need to tour the wiki a bit: https://github.com/sferik/rails_admin/wiki
  # Anyway, here is how RailsAdmin saw your application's models when you ran the initializer:
  config.model User do
    object_label_method { :email }

    list do
      field :email
      field :admin
    end

    create do
      field :admin
      field :email
      field(:password) do
        help 'Digite a senha do novo usuário'
      end

      field :password_confirmation do
        help 'Confirme a senha do novo usuário'
      end
    end

    edit do
      field :admin
      field :email
      field(:password) do
        help 'Digite uma nova senha caso deseje modificar a atual'
      end

      field :password_confirmation do
        help 'Confirme a senha caso deseje mudar a senha atual'
      end
    end
  end

  config.model Student do
    object_label_method { :email }

    list do
      field :registration_number
      field :email
    end

    create do
      field :registration_number
      field :name
      field :email
      field(:password) do
        help 'Digite a senha do novo usuário'
      end

      field :password_confirmation do
        help 'Confirme a senha do novo usuário'
      end
    end

    edit do
      field :registration_number
      field :name
      field :email
      field(:password) do
        help 'Digite uma nova senha caso deseje modificar a atual'
      end

      field :password_confirmation do
        help 'Confirme a senha caso deseje mudar a senha atual'
      end
    end
  end
end
