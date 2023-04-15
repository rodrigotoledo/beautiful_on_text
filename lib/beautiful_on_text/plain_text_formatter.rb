require 'actionview'
module BeautifulOnText
  class PlainTextFormatter
    def self.format(text)
      # Adicione aqui a lógica para melhorar o texto em formato de texto simples
      # por exemplo, usar o TextRank para resumir o texto
      improved_text = "Having the following text: #{text}, give me an improved version for humans containing more content"

      # Remover caracteres especiais, tags HTML e outras formatações
      cleaned_text = ::ActionView::Base.full_sanitizer.sanitize(improved_text)

      # Retornar o texto formatado em texto simples
      cleaned_text.strip
    end
  end
end
