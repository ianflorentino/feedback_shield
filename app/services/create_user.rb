class CreateUser

  def self.execute(params)
    user = User.only_deleted.find_by_email(params[:email])
    (user.restore and user.update(user_params(params)) and return user) if user
    user = User.create(user_params(params))
    user
  end

  private

  def self.user_params(params)
    {
      email: params[:email],
      password: params[:password]
    }
  end
end
