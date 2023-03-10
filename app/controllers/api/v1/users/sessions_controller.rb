class Api::V1::Users::SessionsController < Devise::SessionsController
  respond_to :json

  def create
    user = User.find_for_database_authentication(email: params[:user][:email])

    if user&.valid_password?(params[:user][:password])
      sign_in(user)
      render_success(user, 'Signed in successfully.')
    else
      render_error('Invalid email or password.', :unauthorized)
    end
  end

  def destroy
    if current_user
      sign_out(current_user)
      render_success(nil, 'Signed out successfully.')
    else
      render_error('You need to sign in or sign up before continuing.', :unprocessable_entity)
    end
  end

  private

  def respond_with(resource, _opts = {})
    current_user ? render_success(current_user, 'Logged in successfully.') : render_error(resource.errors.full_messages.to_sentence, :unauthorized)
  end

  def respond_to_on_destroy
    if request.headers['Authorization'].present?
      jwt_payload = JWT.decode(request.headers['Authorization'].split.last, ENV.fetch('DEVISE_JWT_SECRET_KEY')).first
      current_user = User.find(jwt_payload['sub'])
      current_user ? render_success(nil, 'Logged out successfully.') : render_error('Logged out failure.', :unauthorized)
    else
      render_error('You need to sign in or sign up before continuing.', :unprocessable_entity)
    end
  end

  def render_success(data, message)
    render json: { status: :ok, message: message, data: UserSerializer.new(data) }
  end

  def render_error(message, status)
    render json: { status: status, message: message }
  end
end
