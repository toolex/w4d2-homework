class Rps

  def self.rock(opponent)
    if opponent.to_s == "rock"
      return "Tie"
    elsif opponent.to_s == "paper"
      return "Loss"
    elsif opponent.to_s == "scissors"
      return "Win"
    else
      return "Invalid"
    end
  end

  def self.paper(opponent)
    if opponent == "rock"
      return "Win"
    elsif opponent == "paper"
      return "Tie"
    elsif opponent == "scissors"
      return "Loss"
    else
      return "Invalid"
    end
  end

  def self.scissors(opponent)
    if opponent == "rock"
      return "Loss"
    elsif opponent == "paper"
      return "Win"
    elsif opponent == "scissors"
      return "Tie"
    else
      return "Invalid"
    end
  end

end
