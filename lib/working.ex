defmodule Working do
  def some_func do
    __MODULE__.another_func
  end

  def another_func do
    nil
  end
end
