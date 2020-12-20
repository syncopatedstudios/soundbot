require 'soundbot/commands/config'

RSpec.describe Soundbot::Commands::Config do
  it "executes `config` command successfully" do
    output = StringIO.new
    options = {}
    command = Soundbot::Commands::Config.new(options)

    command.execute(output: output)

    expect(output.string).to eq("OK\n")
  end
end
