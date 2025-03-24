defmodule ExTextstack.Message do
  @moduledoc """
    API for Messages
  """

  @doc """
  Sends an SMS using the API.

  ## Required Parameters

  The `params` map **must include** the following fields:

  | Field         | Type    | Required | Description |
  |---------------|---------|----------|-------------|
  | `name`        | String  | ✅ Yes   | The sender's name.
  | `country_code`| String  | ✅ Yes   | The country code, e.g., `"+63"`.
  | `mobile`      | String  | ✅ Yes   | The recipient's mobile number.
  | `message`     | String  | ✅ Yes   | The message content.

  ## Example Usage

      ExTextstack.send_sms(%{
        "name" => "Test",
        "country_code" => "+63",
        "mobile" => "09123456789",
        "message" => "Hello, test!"
      })

  """
  def send(params \\ %{}) do
    "/v1/sms/send"
    |> ExTextstack.post(params)
  end
end
