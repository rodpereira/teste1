class User < ActiveRecord::Base

  # Roles
  # 1 = Owner
  # 2 = Employee

  validates :company, uniqueness: true, if: :is_owner?

  def is_owner?
    role == 1
  end

  def is_employee?
    role == 2
  end
end
