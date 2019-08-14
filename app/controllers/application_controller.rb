class ApplicationController < ActionController::API

    def authenticate_token
        puts "AUTHENTICATE JWT"

        render json: {message: "Unauthorized"}, status: 401 unless decode_token(bearer_token)
    end

    def bearer_token
        puts "BEARER TOKEN"
        puts header = request.env["HTTP_AUTHORIZATION"]


        header = request.env["HTTP_AUTHORIZATION"]
        pattern = /^Bearer /

        puts header.gsub(pattern, '') if header && header.match(pattern)

        
        header.gsub(pattern, '') if header && header.match(pattern)
    end

    def decode_token(token_input)
        puts "DECODE TOKEN"

        JWT.decode(token_input, ENV['JWT_SECRET'], true)
    rescue
        render json: {message: 'Unauthorized'}, status: 401
    end

    def get_current_user
        return if !bearer_token
        decoded_jwt = decode_token(bearer_token)
        User.find(decoded_jwt[0]["user"]["id"])
    end

end
