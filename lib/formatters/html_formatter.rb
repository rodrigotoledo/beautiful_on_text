module BeautifulOnText
  module Formatters
    class HtmlFormatter
      def self.format(text)
        # Adicione aqui a lógica para melhorar o texto em formato de texto simples
        # por exemplo, usar o TextRank para resumir o texto
        "Having the following text: #{text}, give me an improved html code of this text for humans containing more content"
      end
    end
  end
end
