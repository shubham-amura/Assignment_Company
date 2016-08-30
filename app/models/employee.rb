class Employee < ActiveRecord::Base
  belongs_to :company
  has_one :address, as: :addressable

  validates :employee_name, uniqueness: true ,format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows alphabet" }

  validates :phone , uniqueness: true, format: { with: /[0-9]/,message: "Must contain only numbers"},	
  				     length: { minimum: 10 ,message: "Must be 10 digits"}
 
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email , format: {with: VALID_EMAIL_REGEX ,message: "Invalid Email Format"} , 
  uniqueness: {case_sensitive: false}

  # validates_numericality_of :salary , greater_than: 0
 

end
