class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         has_many :forms
<<<<<<< HEAD
         has_many :questions
             # has_many :comments
=======

         has_many :question
         has_many :comments
>>>>>>> 0210e3d837651b4c4aef17e1704d1946a29e2ff3
    
    #validates_presence_of :regno    
      # validates :regno, uniqueness: true;

  # def self.from_omniauth(auth)  
  #   where(provider: auth.provider, uid: auth.uid).first_or_create do |student|
  #     student.provider = auth.provider
  #     student.uid = auth.uid
  #     student.email = auth.info.email
  #     student.password = Devise.friendly_token[0,20]
  #   end
  
end
