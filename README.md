> **Note**: This branch (master) contains a skeleton without any app code, perfect for creating a _new_ application or challenge. If you're looking for an example app built with this skeleton, take a look at the [example](/../..//tree/example) branch which includes basic CRUD and RSpec tests.

### Purpose
The Sinatra Skeleton:

1. Provides a foundation for building challenges or creating a new Sinatra application.
2. Demonstrates a reasonable set of practices around building Sinatra applications.
3. Eases the transition to Rails for Dev Bootcamp students

### Quickstart

1.  `bundle install`
2.  `shotgun config.ru`

As needed, create models & migrations with the `rake` tasks:

```
rake generate:migration  # Create an empty migration in db/migrate, e.g., rake generate:migration NAME=create_tasks
rake generate:model      # Create an empty model in app/models, e.g., rake generate:model NAME=User
```
