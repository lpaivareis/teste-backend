class Contact < ApplicationRecord
    validates :name,  length: {minimum:4}
    validates :active, :birthday, :email, :mobile, :advertising, presence: true
    validates :document, length: 11..14, presence: true, format: { with: /\A^[0-9]*$\z/i, message: "Por favor preencha o campo CPF/CNPJ apenas com números." }
end
