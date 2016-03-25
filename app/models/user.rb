class User < ActiveRecord::Base
#  creating a user using oAuth from github
    def self.create_with_omniauth(auth)
      create! do |user|
        user.provider = auth["provider"]
        user.userid = auth["userid"]
        user.name = auth["info"]["name"]
      end
    end
end
