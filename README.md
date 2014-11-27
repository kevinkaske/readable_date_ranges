readable_date_ranges
====================

Add readable range selections for created_at and modified_at to Active Record Models. These scopes are very helpful for reportings.

## Installation

Add the following to your Gemfile
```
gem 'readable_date_ranges'
```

## Usage

Add the following to any models you would like to add these scopes to
```
include ReadableDateRanges
```

Then you can use the scope in the following way when calling your model
```
@users = User.created_this_week
```