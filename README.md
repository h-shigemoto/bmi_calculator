# BmiCalculator

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/bmi_calculator`. To experiment with that code, run `bin/console` for an interactive prompt.

Calculation BMI. height use m, cm, feet and inch.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bmi_calculator'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bmi_calculator

## Usage

```ruby
# calc m, kg
bmi = BmiCalculator.calc_m(1.7, 60)

# calc cm, kg
bmi = BmiCalculator.calc_cm(170, 60)

# calc cm, g
bmi = BmiCalculator.calc_cm_g(170, 60000)

# calc feet, inch, pound
bmi = BmiCalculator.calc_yp(5, 7, 130)

# calc feet, pound
bmi = BmiCalculator.calc_feet_yp(5.5, 130)

# calc inch, pound
bmi = BmiCalculator.calc_inch_yp(67, 130)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/koyupi/bmi_calculator. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

