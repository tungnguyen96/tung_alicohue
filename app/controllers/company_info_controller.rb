class CompanyInfoController < ApplicationController
  def index
    @company_info = CompanyInfo.first
  end
end
