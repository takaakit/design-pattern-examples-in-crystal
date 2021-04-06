require "./lazy_supporter"
require "./moody_supporter"
require "./special_supporter"
require "./limited_supporter"
require "./trouble"

# A trouble is turned around among supporters, and the trouble will be handled by the supporter who can handle it.
# There are four types of supporters below:
# * LazySupporter doesn't handle any trouble
# * MoodySupporter handles odd ID troubles
# * SpecialSupporter handles a trouble of the target ID.
# * LimitedSupporter handles troubles below the limit ID.

emily = LazySupporter.new("Emily")
william = MoodySupporter.new("William")
amelia = SpecialSupporter.new("Amelia", 6)
joseph = LimitedSupporter.new("Joseph", 5)

# Make a chain.
emily.set_next(william).set_next(amelia).set_next(joseph)

# Various troubles occurred.
(0..9).each do |i|
  emily.support(Trouble.new(i))
end
