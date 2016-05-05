class Contacto < ActiveRecord::Base
	has_no_table

	attr_accessor :nombre, :string
	attr_accessor :email, :string
	attr_accessor :mensaje, :string

	validates_presence_of :nombre
	validates_presence_of :email
	validates_presence_of :mensaje
	validates_format_of :email, :with => /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
	validates_length_of :mensaje, :maximum => 500
end