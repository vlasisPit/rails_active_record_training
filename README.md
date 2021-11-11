# README

## Docker database configuration
Before start using Ruby on Rails, MySQL should run first. Follow the commands below  

- docker run -p 3306:3306 --name mysql -e MYSQL_ROOT_PASSWORD=root -d <mysql_docker_image_id>  
- docker exec -it <mysql_container_id> bash  
- mysql -uroot -p # Use root as password  
- create user 'vlasis'@'%' identified by '1'; #create user vlasis with password 1  
- GRANT ALL PRIVILEGES ON db_name.* TO 'vlasis'@'%';  
- CREATE DATABASE simple_cms_development;  
- GRANT ALL PRIVILEGES ON rails_active_record_training_development.* TO 'vlasis'@'%';  
- GRANT ALL PRIVILEGES ON rails_active_record_training_test.* TO 'vlasis'@'%';

## Create database
- rails db:create

## Migration Shortcuts
- rails generate model Product # create model and migration Product
- rails g model Product  # same as above
- rails g model Product name:string
- rails g model Product --no-timestamps # without created_at and updated_at 
- rails g model Product name:string description:text inventory:integer 'price:decimal{7,2}' restocked_at:datetime  # price with precision and scale
- rails g migration AddQtySoldToProducts qty_sold:integer  # add_column integer qty_sold on products table, Add<Something>To<Table>  
- rails g migration AddRefNumToProducts ref_num:string:index  # add RefNum column on table Products and make it an index
- rails g migration AddStyleToProducts style:references  # style id column foregin key to products