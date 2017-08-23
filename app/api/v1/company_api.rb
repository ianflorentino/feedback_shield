module V1
  class CompanyAPI < Base
    resource :companies do
      desc 'Show a company'
      get '/:name', skip_authorization: true do
      end

      desc 'Create a Company' do
        params do
          requires :name, type: String, allow_blank: false
          optional :domain, type: String
          optional :title, type: String
          optional :subtitle, type: String
          optional :message_to_customer, type: String
          optional :positive_feedback_message, type: String
          optional :negative_feedback_message, type: String
          optional :redirect_url, type: String
          optional :default_review, type: Integer
          optional :review_threshold, type: Float
          optional :logo, type: Rack::Multipart::UploadedFIle
          optional :storefront_photo, type: Rack::Multipart::UploadedFIle
        end
      end
    end
  end
end
