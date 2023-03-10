class Api::V1::Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  private

  def respond_with(resource, _opts = {})
    if resource.persisted?
      render json: {
        status: 200,
        message: 'Signed up successfully.',
        data: UserSerializer.new(resource)
      }, status: :ok
    else
      render json: {
        status: 422,
        message: "Signed up failure. #{resource.errors.full_messages.to_sentence}"
      }, status: :unprocessable_entity
    end
  end
end
