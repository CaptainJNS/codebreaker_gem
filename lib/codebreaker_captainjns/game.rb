module CodebreakerCaptainjns
  class Game
    include GameLogic
    include I18n
  
    attr_reader :att_total, :attempts, :difficulty, :hints_total, :hints, :name, :win, :secret
  
    def initialize(params)
      @name = params['name']
      @difficulty = params['difficulty']
      @attempts = calc_attempts_and_hints(@difficulty)[0]
      @hints = calc_attempts_and_hints(@difficulty)[1]
      @win = false
      @secret = make_number
      @unused_hints = @secret.chars
    end

    def check(number)
      @attempts -= 1
      result = check_numbers(@secret.chars, number.chars)
      @win = true if result == '++++'
      result
    end

    def use_hint
      return I18n.t('game.no_hints') unless @hints.positive?
  
      @hints -= 1
      hint(@unused_hints)
    end
  end  
end
