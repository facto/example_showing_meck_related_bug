defmodule ShowMeckRelatedBugSpec do
  use ESpec


  describe "non-working" do
    subject do: NonWorking.some_func

    before do
      allow NonWorking |> to(accept(:another_func))
      subject
    end

    it "records the call" do
      expect NonWorking |> to(accepted :another_func)
    end
  end

  describe "working" do
    subject do: Working.some_func

    before do
      allow Working |> to(accept(:another_func))
      subject
    end

    it "records the call" do
      expect Working |> to(accepted :another_func)
    end
  end
end
