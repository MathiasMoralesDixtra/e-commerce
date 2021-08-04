module ApplicationHelper
    def user_is_admin?
        user_signed_in? && current_user.is_admin
    end
end
