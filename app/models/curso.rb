class Curso < ApplicationRecord
 has_many :estudiante

  validates :nombre, presence: { message: "Este campo es requerido." 
  }
  
  validates :nombre,
    length: {minimum: 4, maximum: 50,
    message: "El nombre debe estar entre 4 y 50 caracteres"
  }

  validates :nombre,
    uniqueness: { message: "El nombre del curso ya ha sido utilizado." 
  }

  validates :descripcion, 
    presence: { message: "Este campo es requerido." } 
  
  validates :descripcion,
    length: {minimum:4, maximum:50,
    message: "La descricion debe estar entre 4 y 50 caracteres"
  }

  validates :descripcion,
    uniqueness: { message: "El nombre ya ha sido utilizado." 
  }
end