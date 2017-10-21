module FaqModule
    class RemoveService
      def initialize(params)
        # TODO: identify origin and set company
        @company = Company.last
        @params = params
        @id = params["id"]
      end
  
      def call
        begin
            faq = @company.faqs.find(@id)
        rescue => exception
            return "Questão inválida, verifique o Id"
        end
        
        Faq.transaction do
          # Deleta as tags associadas que não estejam associadas a outros faqs
          faq.hashtags.each do |h|
            if h.faqs.count <= 1
              h.delete
            end
          end
          faq.delete
          "Deletado com sucesso"
        end
      end
    end
end