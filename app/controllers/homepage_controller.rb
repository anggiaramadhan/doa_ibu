# frozen_string_literal: true

class HomepageController < ApplicationController
  skip_before_action :signed_in?

  def new
  end
end
