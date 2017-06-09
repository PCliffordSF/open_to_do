class ApiController < ApplicationController
    
    skip_before_action :verify_authenticity_token
       
    private

    def authenticated?
        authenticate_or_request_with_http_basic {|username, password| User.where( username: username, password: password).present? }
    end
   
end
    
#curl -u BobUsername:password https://ruby-pcliffordsf.c9users.io/api/users/

#curl -u BobUsername:password -d "user[username]=Sterling" -d "user[password]=Archer" https://ruby-pcliffordsf.c9users.io/api/users/

# curl -u BillyBobUsername:password -d "list[name]=Things to do today" -d "list[permissions]=private" https://ruby-pcliffordsf.c9users.io/api/users/1/lists