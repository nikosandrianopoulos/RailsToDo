class ApiDocsController < ApplicationController
    skip_before_action :authorize_request, only: :show
    def show
        file_path = Rails.root.join('config', 'api_docs', 'openapi.yaml')
      
        if File.exist?(file_path)
          yaml_content = File.read(file_path)
          render plain: yaml_content
        else
          render json: { error: 'File not found' }, status: :not_found
        end
      end
end