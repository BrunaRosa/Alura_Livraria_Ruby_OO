# frozen_string_literal: true

module Contador
  def <<(livro)
    push(livro)
    @maximo_necessario = size if @maximo_necessario.nil? || @maximo_necessario < size
    self
  end
  attr_reader :maximo_necessario
end
