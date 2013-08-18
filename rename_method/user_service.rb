class UserService
  USERNAME = 'jose'
  PASSWORD = 'secret'

  class << self
    def lgn username, password
      username == USERNAME && password == PASSWORD
    end
  end
end
