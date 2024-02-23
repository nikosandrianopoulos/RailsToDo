class ApiDocsController < ApplicationController
    def show
        send_file(
            Rails.root.join('public', 'openapi.yaml'),
            filename: 'openapi.yaml',
            type: 'application/x-yaml'
        )
    end
end