class ApplicationController < ActionController::Base
    private
    def admin_only
        unless current_user&.is_admin
            flash[:alert] = "Esta de vivo #{current_user&.email}"
            redirect_to root_path 
        end
    end
    def client_only
        unless current_user&.is_client
            flash[:alert] = "Esta de vivo #{current_user&.email}"
            redirect_to root_path 
        end
    end
end
