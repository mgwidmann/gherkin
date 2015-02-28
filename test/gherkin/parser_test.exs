defmodule WhiteBread.Gherkin.ParserTest do
  use ExUnit.Case
  import WhiteBread.Gherkin.Parser

  test "Parses the feature name" do
    feature_text = """

    Feature: Serve coffee 
      Coffee should not be served until paid for
      Coffee should not be served until the button has been pressed
      If there is no coffee left then money should be refunded
    """

    %{name: name} = parse_feature(feature_text)
    assert name == "Serve coffee"
  end
end
