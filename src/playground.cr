# TODO: Write documentation for `Playground`
module Playground
  VERSION = "0.1.0"
  POOL = [] of String

  # TODO: Put your code here
  def test
    a = 1 # ameba:disable Lint/UselessAssign
  end

  def test2
    a = 2
  end

  def test3
    value, score = POOL.redis { |c| c.zrange("retry", 0, -1, with_scores: true) }.as(Array)
    puts value
  end
end
