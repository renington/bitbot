module FaqModule
    class CreateService
      def initialize(params)
        # TODO: identify origin and set company
        @company = Company.last
        @question = params["question-original"]
        @answer = params["answer-original"]
        @hashtags = params["hashtags-original"]
      end
  
      def call
        return 'Hashtag Obrigatória' if @hashtags == nil || @hashtags == ""
        Faq.transaction do
          faq = Faq.create(question: @question, answer: @answer, company: @company)
          @hashtags.split(/[\s,]+/).each do |hashtag|
            faq.hashtags << Hashtag.create(name: hashtag)
          end
        end
        "Criado com sucesso"
      end
    end
end