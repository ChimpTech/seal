require 'spec_helper'
require './lib/slack_poster'


	describe 'slack_poster' do

		let(:github_response) { [{"first pull request" => "www.google.com", "second pull request" => "www.gov.uk"}] }
		let(:webhook_url)			{ ENV["SLACK_WEBHOOK"] 																																}
		let(:channel)					{ "#angry-seal-bot-test" 																															}
		let(:message)					{ "test running!"																																			}
		let(:slack_poster) 		{ SlackPoster.new(webhook_url, channel )                                       				}

		context "send_request" do
			it "should receive a 200 response code" do
				expect(slack_poster.send_request(message)).to eq("ok (200)")
			end
		end

	end

