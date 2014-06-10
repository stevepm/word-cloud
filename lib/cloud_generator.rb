class CloudGenerator
  attr_reader :input
  def initialize(input)
    @input = input
  end

  def generate
    output = {}
    input.each do |person, words|
      words.each do |word|
        word = word.downcase
        if output[word]
          output[word][:count] += 1
          output[word][:people] << person
        else
          output[word] = {count: 1, people: [person]}
        end
      end
    end
    output
  end

end