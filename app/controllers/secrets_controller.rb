class SecretsController < ApplicationController
  before_action :require_login
  def show
    #show the secret
  end
end

# get show
#   should redirect to login if you're not logged in (FAILED - 1)
#   should show you the secret if you're logged in (FAILED - 2)
