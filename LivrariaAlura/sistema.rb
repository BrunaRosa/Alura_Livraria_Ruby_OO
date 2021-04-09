# frozen_string_literal: true

require_relative 'livro'
require_relative 'revista'
require_relative 'ebook'
require_relative 'estoque'

def livro_para_newsletter(livro)
  if livro.ano_lancamento < 1999
    puts 'Newsletter/Liquidacao'
    puts livro.titulo
    puts livro.preco
    puts livro.possui_reimpressao?
  end
end

algoritmos = Livro.new('Algoritmos', 100, 1998, true, 'Intresíca', true)
arquitetura = Livro.new('Introdução À Arquitetura e Design de Software', 70, 2011, true, 'Abelhinha', false)
programmer = Livro.new('The Pragmatic Programmer', 100, 1999, true, 'Casa das Letras', false)
ruby = Livro.new('Programming Ruby', 100, 2004, true, 'teste', false)
revistona = Revista.new('Revista Ruby', 10, 2012, true, 'Revistas', 3)
online_arquitetura = Ebook.new('Introducao a Arquitetura e design de Software', 50, 2012, '')

estoque = Estoque.new
estoque << algoritmos << algoritmos << ruby << programmer << arquitetura << ruby << ruby << revistona << revistona << online_arquitetura

estoque.vende ruby
estoque.vende algoritmos
estoque.vende algoritmos
estoque.vende ruby
estoque.vende ruby
estoque.vende revistona
estoque.vende online_arquitetura

puts estoque.livro_que_mais_vendeu_por_titulo.titulo
puts estoque.revista_que_mais_vendeu_por_titulo.titulo
puts estoque.ebook_que_mais_vendeu_por_titulo.titulo
puts estoque.respond_to?(:ebook_que_mais_vendeu_por_titulo)
