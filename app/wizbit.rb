class Wizbit
  def quotes
    ['Ship it!', 'Maybe Mongodb?', 'Is it webscale?', 'I love Redis', 'Just use Rails', 'PHP sucks!', 'bundle update']
  end

  def speak
    quotes.sample
  end
end