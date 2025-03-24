defmodule ExTextstackTest do
  alias ExTextstack.Message

  use ExUnit.Case, async: true
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  setup do
    :ok
  end

  describe "message" do
    test "send sms" do
      use_cassette "send_sms" do
        params = %{
          "country_code" => "+63",
          "message" => "message from test",
          "mobile" => "09277705082",
          "name" => "Saint"
        }

        resp =
          Message.send(params)

        assert {:ok,
                %Req.Response{
                  status: 200,
                  body: %{"message" => "success"}
                }} = resp
      end
    end
  end
end
