# Active Record Associations

#### SWABTs:
1. Implement one-to-many relationships using Active Record `has_many` and `belongs_to`
2. Implement many-to-many relationships using Active Record `has_many, through`
3. Describe the methods that the relationship macros add to a model



Driver -< Ride >- Passenger

1. Driver -< Ride
2. Passenger -< Ride
3. Driver >-< Passenger

#### drivers table
| id  | title    |
| --- | -------- |
| 1   | Raffy    |
| 2   | Victoria |
| 3   | Pikachu  |

#### passengers table
| id  | name     |
| --- | -------- |
| 1   | Michelle |
| 2   | Sinead   |
| 3   | Rei      |

#### rides table
| id  | driver_id | passenger_id | pick_up                   | drop_off               |
| --- | --------- | ------------ | ------------------------- | ---------------------- |
| 1   | 1         | 1            | There                     | Here                   |
| 2   | 1         | 2            | Here                      | There                  |
| 3   | 1         | 3            | Boston, MA                | Quebec, Canada         |
| 4   | 2         | 1            | 42 Wallaby Way, Sydney    | 44 Wallaby Way, Sydney |
| 5   | 3         | 3            | Next to middle of nowhere | Somewhere              |




### ActiveRecord Set Up Review
1. Create class & inherit from `ActiveRecord::Base`)
2. Create migration file (`rake db:create_migration NAME=migration_name`)
3. Write the migration code
4. Run the migration and check the schema/status (`rake db:migrate` && `rake db:migrate:status`)
5. Test the Ruby class in rake console (`rake db:console`)

#### Outline
- Seeding
    - seed.rb
    - Faker gem
- Review migrations
- Association methods
    - Before ActiveRecord, how did we write association methods?
    - What do `has_many` and `belongs_to` do for us?


_____________


### Example App


Game -< Review >- Player


Let's make a game review app so players can review the games they've played. For our domain, we'll need a many-to-many relationship between `Players` and `Games`, where an `Player` has many `Games` through `Reviews` and a `Game` has many `Players` through `Reviews`. `Reviews` will be the join between `Players` and `Games`, so our `Reviews` table will need foreign keys for the game_id and review_id.

Our database tables would look something like this:

#### games table
| id  | title          |
| --- | -------------- |
| 1   | Mario Kart     |
| 2   | Stardew Valley |
| 3   | Pokemon Go     |

#### players table
| id  | name  |
| --- | ----- |
| 1   | Ian   |
| 2   | Leizl |
| 3   | Rei   |

#### reviews table
| id  | game_id | player_id | review          |
| --- | ------- | --------- | --------------- |
| 1   | 1       | 1         | Great!          |
| 2   | 1       | 2         | Also great!     |
| 3   | 1       | 3         | No good.        |
| 4   | 2       | 1         | The best 10/10  |
| 5   | 3       | 3         | This is my jam. |

### Association Methods

In our domain, we've described the relationships on our classes. This gives us a sense of how to query for data from one class to another - in SQL, this involves writing queries using the _foreign key_ to join between tables. We can also express this with Ruby code.

Since a _review_ belongs to a _game_ and a _player_, we can use ActiveRecord to write instance methods that let us access data across our different model:

```rb
class Review < ActiveRecord::Base

  def game
    Game.find(self.game_id)
  end

  def player
    Player.find(self.player_id)
  end

end
```

And since a _game_ has many _reviews_, and has many _players_ through _reviews_, we can also use ActiveRecord to query across classes from a game instance:

```rb
class Game < ActiveRecord::Base

  def reviews
    Review.all.select do |review|
      review.game_id == self.id
    end

    # or, using Active Record querying:
    # Review.where(game_id: self.id)
  end

  def players
    # and to return the players:
    reviews.map do |review|
      review.player
    end
  end

end
```

Since these kinds of relationship are very common in domain modeling, ActiveRecord also gives us some additional association helper methods to write this code for us:

```rb
class Review < ActiveRecord::Base
  belongs_to :game
  # lets us call an instance method Review#game to return the Game instance

  belongs_to :player
  # lets us call an instance method Review#player to return the Player instance
end
```

```rb
class Game < ActiveRecord::Base
  has_many :reviews
  # lets us call an instance method Game#reviews to return a collection of Review instances

  has_many :players, through: :reviews
  # lets us call an instance method Game#players to return a collection of Player instances
end
```

Pay close attention to the naming conventions! *belongs_to* should always take a _singular_ name as an argument, and *has_many_ should always take a _plural_ name as an argument.




##### Extra Resources
- [ActiveRecord Associations Documentation](https://guides.rubyonrails.org/association_basics.html)
- [Faker Gem](https://github.com/faker-ruby/faker)