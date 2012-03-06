class User < ActiveRecord::Base
  attr_accessible :name, :email

  email_regex = /[\w+\.]+@[a-z\d\-.]+\.[a-z]+/i

  validates :name, :presence => true,
                   :length => {:maximum => 50}
  validates :email, :presence => true,
                    :format => { :with => email_regex},
                    :uniqueness => { :case_sensitive => false }
end
