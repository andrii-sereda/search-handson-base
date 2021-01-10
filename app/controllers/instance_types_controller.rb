class InstanceTypesController < ApplicationController
  def index
  end

  def search
    @instance_types = _search_provider.search(params[:q], params[:mem].to_i)
  end

  private

  def _search_provider
    SearchNoop
  end
end
