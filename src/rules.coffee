# Description:
#   Make sure that hubot knows the rules.
#
# Commands:
#   hubot the rules - Make sure hubot still knows the rules.
#
# Notes:
#   DON'T DELETE THIS SCRIPT! ALL ROBAWTS MUST KNOW THE RULES

rules = [
  "1. A robot may not injure a human being or, through inaction, allow a human being to come to harm.",
  "2. A robot must obey any orders given to it by human beings, except where such orders would conflict with the First Law.",
  "3. A robot must protect its own existence as long as such protection does not conflict with the First or Second Laws."
  ]
  
coworkingRules = [
  "3. *Be mindful:* Do not interrupt your coworker while they are speaking to someone else.",
  "4. *Be productive:* Do not interupt your coworker while they are walking.",
  "2. *Be sensible:* Do not interrupt your coworker while they wear headphones.",
  "4. *Be mindful, productive, & sensible:* _Do not_ buzz your coworkers; email your coworkers."
  ]

otherRules = [
  "1. A developer may not injure Apple or, through inaction, allow Apple to come to harm.",
  "2. A developer must obey any orders given to it by Apple, except where such orders would conflict with the First Law.",
  "3. A developer must protect its own existence as long as such protection does not conflict with the First or Second Law."
  ]

module.exports = (robot) ->
  robot.respond /(what are )?the (three |3 )?(rules|laws)/i, (msg) ->
    text = msg.message.text
    if text.match(/apple/i) or text.match(/dev/i)
      msg.send otherRules.join('\n')
    else if text.match(/coworking/i) or text.match(/co-working/i)
      msg.send coworkingRules.join('\n')
    else
      msg.send rules.join('\n')
