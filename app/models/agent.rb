class Agent < ActiveRecord::Base
  # Attributes

  # Relationships
  has_many :addresses, dependent: :destroy
  has_many :social_links, dependent: :destroy
  has_many :certifications, dependent: :destroy
  has_one :broker, dependent: :destroy
  has_one :biography, dependent: :destroy
  has_one :team, dependent: :destroy

  # Validations

  # Scopes

  # Methods

  # Returns the full name (first + last + suffix) of an agent
  def full_name
    if self.suffix.present?
      "#{self.first_name} #{self.last_name}, #{self.suffix}"
    else
      "#{self.first_name} #{self.last_name}"
    end
  end

  def phone_number
    if self.registered?
      self.read_attribute(:phone_number)
    else
      "(972) 555-XXXX"
    end
  end

  def email
    if self.registered?
      self.read_attribute(:email)
    else
      "#{self.first_name.try(&:downcase)}@XXXXXX.XXX"
    end
  end
end
