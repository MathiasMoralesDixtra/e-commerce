class Client < User
    has_one :order, foreign_key: :user_id

    def is_client
        true
    end
end
