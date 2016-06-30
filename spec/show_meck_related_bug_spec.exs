defmodule ShowMeckRelatedBugSpec do
  use ESpec


  describe "meck-related bug" do
    subject do: Example.some_func

    before do
      allow Example |> to accept(:another_func)
      subject
    end

    it "records the call" do
      expect Example |> to(accepted :another_func)
    end
  end
end
