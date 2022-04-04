class Log
  include Mongoid::Document
  include Mongoid::Timestamps
  field :id, type: Integer
  field :name, type: String
  field :email, type: String
  field :sysdate, type: Date
end
