class Admin::DashboardController < ApplicationController
  before_action :authenticate

  def show
    @inventory = Product.count
    @category_count = Category.count
  end

  private

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV['ADMIN_USERNAME'] && password == ENV['ADMIN_PASSWORD']
    end
  end
end
