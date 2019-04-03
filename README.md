# Video Club

![ERD](/Video-Club.png)

## Database creation

I generate these scaffolds

`rails generate scaffold Member name:string phone:string address:string`

`rails generate scaffold Formato name:string`

`rails generate scaffold Category name:string`

`rails generate scaffold Actor name:string birth_date:date`

`rails generate scaffold Movie name:string category:references`

`rails generate scaffold Casting actor:references movie:references`

`rails generate scaffold Cassette movie:references formato:references`

`rails generate scaffold Order start_date:datetime end_date:datetime cassette:references member:references`

## Usage

Just

    rails db:migrate
    rails db:seed

Run the server
    
    rails s
