require 'clockwork'
require 'dotenv/load'
require 'slack-notify'
include Clockwork

client = SlackNotify::Client.new(
  webhook_url: ENV['WEBHOOK_URL'],
  channel: "#test",
  username: "mybot",
  icon_url: "http://mydomain.com/myimage.png",
  icon_emoji: ":shipit:",
  link_names: 1
)

#client.notify("一発目")
#puts "スラックメッセージ送信済み"

every(3.minutes,'gogogo') do
  client.notify("確認メッセージ")
end
