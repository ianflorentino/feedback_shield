class CreateCompany
  def self.execute(params)
    company = Company.only_deleted.find_by_name(params[:name])  
    (company.restore and company.update(company_params(params)) and return company) if company
    company = Company.create(company_params(params))
    company
  end

  private

  def self.company_params(params)
    logo = ActionDispatch::Http::UploadedFile.new(params[:logo])
    storefront_photo = ActionDispatch::Http::UploadedFile.new(params[:storefront_photo])

    {
      user: current_user,
      name: params[:name],
      domain: params[:domain],
      title: params[:title],
      subtitle: params[:subtitle],
      message_to_customer: params[:message_to_customer],
      positive_feedback_message: params[:positive_feedback_message],
      negative_feedback_message: params[:negative_feedback_message],
      redirect_url: params[:redirect_url],
      default_review: params[:default_review],
      review_threshold: params[:review_threshold],
      logo: (logo if logo),
      storefront_photo: (storefront_photo if storefront_photo)
    }
  end
end
