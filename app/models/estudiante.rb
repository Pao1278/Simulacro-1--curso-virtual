class Estudiante < ApplicationRecord
  belongs_to :curso

  validates :nombre, :app_paterno, :app_materno, presence: true

  validates :nombre,
    length: {minimum: 3, maximum: 50,
      message: "El nombre debe estar entre 3 y 50 caracteres"
  }

  validates :nombre,
    uniqueness: { message: "El nombre ya ha sido utilizado." }
  
  validates :app_paterno, :app_materno, 
  length: {minimum:3, maximum:50, 
  message: "El nombre debe estar entre 3 y 50 caracteres"
  }
end