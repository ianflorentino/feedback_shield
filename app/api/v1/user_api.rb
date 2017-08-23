module V1
  class UserAPI < Base
    resource :users do
      desc 'Show a user'
      get '/me', skip_authorization: true do
        serialize_response(current_user) 
      end

      desc 'Create a user'
      params do
        requires :email, regexp: /.+@.+/, allow_blank: false
        requires :password, type: String, allow_blank: false
      end
      post '', skip_authorization: true do
        user = CreateUser.execute(params)
        status 400 unless user.errors.blank?
        serialize_response(user)
      end
    end
  end
end
