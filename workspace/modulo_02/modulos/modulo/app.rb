require_relative 'payment'

include Payment::Master

puts Payment::Master::paying #modulos aninhados necessitam do include
