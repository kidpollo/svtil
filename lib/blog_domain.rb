class BlogDomain
  def self.matches?(request)
    request.domain.present? && request.domain !~ /#{DEFAULT_HOST}/
  end
end
