RSpec.describe "`soundbot config` command", type: :cli do
  it "executes `soundbot help config` command successfully" do
    output = `soundbot help config`
    expected_output = <<-OUT
Commands:
    OUT

    expect(output).to eq(expected_output)
  end
end
