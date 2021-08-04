module ApplicationHelper
    def user_is_admin?
        user_signed_in? && current_user.is_admin
    end
    def user_is_client?
        user_signed_in? && current_user.is_client
    end
end
