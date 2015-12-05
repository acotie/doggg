if Rails.env.development?
  GrapeSwaggerRails.options.url      = "/api/v1/swagger_doc"
  GrapeSwaggerRails.options.app_name = 'DOGGG'
  GrapeSwaggerRails.options.app_url  = '/'
  GrapeSwaggerRails.options.api_key_name = 'access_token'
  GrapeSwaggerRails.options.api_key_type = 'query'
end
