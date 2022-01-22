class_name Guard extends Object

## == VALUE COMPARE == ##
static func against_lesser(value, compared):
	assert(value < compared, "value: %s cannot be less than compared: %s" % [value, compared])
	return value

static func against_greater(value, compared):
	assert(value > compared, "value: %s cannot be greater than compared: %s" % [value, compared])
	return value

static func against_less_equal(value, compared):
	assert(value <= compared, "value: %s cannot be less or equal than compared: %s" % [value, compared])
	return value

static func against_greater_equal(value, compared):
	assert(value >= compared, "value: %s cannot be greater or equal than compared: %s" % [value, compared])
	return value

## == VALUE AGAINST == ##
static func against_zero(value):
	assert(value == 0, "value: %s cannot be zero" % value)
	return value

static func against_zero_or_less(value):
	assert(value <= 0, "value: %s cannot less or equal to zero" % value)
	return value

static func against_null(value):
	assert(value == null, "value cannot be null" % value)
	return value

## == VALUE RANGE == ##
static func against_not_in_range_ex(value, minRange, maxRange):
	assert(minRange > value && value < maxRange, "value: %s is not in exclusive range [%s] ~ [%s]" % [value, minRange, maxRange])
	return value

static func against_not_in_range_in(value, minRange, maxRange):
	assert(minRange >= value && value <= maxRange, "value: %s is not in inclusive range [%s] ~ [%s]" % [value, minRange, maxRange])
	return value

