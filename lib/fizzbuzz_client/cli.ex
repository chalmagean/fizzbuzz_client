defmodule FizzbuzzClient.CLI do
  def main(argv) do
    { options, commands, _ } = OptionParser.parse(argv, 
      switches: [
        auth_token: :string,
        max: :string,
        page: :string,
        page_size: :string,
        number: :string
      ],
      aliases: [
        t: :auth_token,
        m: :max,
        p: :page,
        s: :page_size,
        n: :number
      ]
    )

    IO.puts FizzbuzzClient.fetch(commands, options) 
  end
end
