class ApplicationController < ActionController::Base
  before_action :load_navigator_links,
                :load_categories,
                :load_admin_info,
                :load_company_info

  private

  def load_navigator_links
    @links ||= {
      "index": "Trang chủ",
      "company_info": "Giới thiệu",
      "product": "Sản phẩm",
      "contact": "Liên hệ",
      "feedbacks/new": "Phản hồi"
    }
  end

  def load_categories
    @categories ||= Category.all
  end

  def load_admin_info
    @admin ||= Administrator.first
  end

  def load_company_info
    @company ||= CompanyInfo.first
  end

  # Overwriting the sign_out redirect path method
  def after_sign_out_path_for(resource_or_scope)
    root_path
  end
end
