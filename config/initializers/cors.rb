Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://sitecampaign-e61rbaibt-sagarsikha12s-projects.vercel.app' # Adjust this to your React frontend's domain/port

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head],
      credentials: true
  end
end
