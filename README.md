
# Faker Gem Scaffolding Example

This repository is a Ruby on Rails application demonstrating the use of the Faker gem along with Rails scaffolding for a `Post` model.

## Features

-   **Faker Gem**: Used to generate fake data for development and testing purposes.
-   **Rails Scaffolding**: Provides a basic CRUD interface for the `Post` model.

## Getting Started

### Prerequisites

-   Ruby 3.2.2
-   Rails 7.2.1
-   SQLite3 (for the database)

### Installation

1.  **Clone the repository**

    ```git clone https://github.com/yourusername/your-repository-name.git cd your-repository-name ```
    
2. **Install dependencies**   

   ```bundle install ```
   
3. **Setup the database**  
```rails db:create```  
```rails db:migrate ```  

4. **Seed the database with fake data** 
The Faker gem can be used to generate fake data. You can create seed data by running:  
```rails db:seed```

Or you can you just run :  
```rails db:setup```  

### Usage

-   **Start the Rails server**  
```rails server```  
``` rails s```  
-   Open your browser and navigate to `http://localhost:3000` to view the application.
    
-   **Access the Posts scaffold**
    
    You can interact with the `Post` model through the scaffolded views provided by Rails:
    
    -   List all posts: `http://localhost:3000/posts`
    -   Create a new post: `http://localhost:3000/posts/new`
    -   Edit a post: `http://localhost:3000/posts/:id/edit`
    -   Show a post: `http://localhost:3000/posts/:id`
    -   Delete a post: Available on the index and show views

### Ruby and Rails Versions

-   Ruby: 3.2.2
-   Rails: 7.2.1
