Readable Date Ranges
====================

Add readable range selections for created_at and updated_at to Active Record Models. These scopes are very helpful for reportings.

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

## Available Scopes

```
#created_at scopes
@users = User.created_this_week
@users = User.created_last_week
@users = User.created_this_month
@users = User.created_last_month
@users = User.created_this_year
@users = User.created_last_year

#updated_at scopes
@users = User.updated_this_week
@users = User.updated_last_week
@users = User.updated_this_month
@users = User.updated_last_month
@users = User.updated_this_year
@users = User.updated_last_year

#created_or_updated_at scopes
@users = User.created_or_updated_this_week
@users = User.created_or_updated_last_week
@users = User.created_or_updated_this_month
@users = User.created_or_updated_last_month
@users = User.created_or_updated_this_year
@users = User.created_or_updated_last_year
```