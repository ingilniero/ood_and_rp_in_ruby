class User
  attr_reader :name, :type, :options

  def initialize(name, type, options = {})
    @name = name
    @type = type
    @options = options

    @strategy = case type
                when :password then Auth::Password.new self
                when :public_key then Auth::PublicKey.new self
                when :oauth then Auth::OAuth.new self
                end

  end

  def authenticate!
      @strategy.authenticated? options
  end

  class << self
    def login(name, options = {})
      user = USERS.find { |u| u.name == name }
      user.authenticate!
    end
  end
end

module Auth
  class Password
    def initialize user
      @user = user
    end

    def authenticated?(options)
      @user.options[:password] == options[:password]
    end
  end

  class PublicKey
    def initialize user
      @user = user
    end

    def authenticated?(options)
      # Do some logic
      true
    end
  end

  class OAuth
    def initialize user
      @user = user
    end

    def authenticated?(options)
      # Do some logic
      true
    end
  end
end
