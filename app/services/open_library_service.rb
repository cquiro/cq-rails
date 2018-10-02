class OpenLibraryService
  include HTTParty
  base_uri 'https://openlibrary.org'

  def initialize(isbn)
    @isbn = isbn
  end

  def book_info
    info = send_request.parsed_response
    formatted_response(info)
  end

  private

  attr_reader :isbn

  def send_request
    self.class.get('/api/books', query: { bibkeys: "ISBN:#{isbn}", format: 'json', jscmd: 'data' })
  end

  def formatted_response(info)
    { 
      ISBN: "#{isbn}",
      title: info["ISBN:#{isbn}"]["title"],
      subtitle: info["ISBN:#{isbn}"]["subtitle"],
      number_of_pages: info["ISBN:#{isbn}"]["number_of_pages"],
      authors: info["ISBN:#{isbn}"]["authors"].map! { |author| author["name"] }
    }

  end
end
