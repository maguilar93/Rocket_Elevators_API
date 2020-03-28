##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'Cps' do
  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.preview.trusted_comms.cps().fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://preview.twilio.com/TrustedComms/CPS',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "cps_url": "https://preview.twilio.com/TrustedComms/CurrentCall",
          "phone_number": "+1500123",
          "url": "https://preview.twilio.com/TrustedComms/CPS"
      }
      ]
    ))

    actual = @client.preview.trusted_comms.cps().fetch()

    expect(actual).to_not eq(nil)
  end
end