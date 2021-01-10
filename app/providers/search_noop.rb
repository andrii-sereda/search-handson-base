class SearchNoop
  def self.search(_, _)
    InstanceType.includes(:resource).all
  end
end
