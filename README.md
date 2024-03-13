# Contact Dashboard

This is a sample SB-Admin panel with registration and login functionalities.

## Installation

Before using the application, follow these steps:

1. **Install Symfony CLI:** If you haven't already, install Symfony CLI by following the [official installation instructions](https://symfony.com/download).

2. **Clone the Repository:** Clone this repository to your local machine using the following command:

   ```bash
   git clone https://github.com/Jagadeesh128/panel.git
cd yourproject
composer install

## Database Configuration

Before using the application, make sure to update the MySQL database connection details in the `.env` file:

1. Open the `.env` file in your project directory.
2. Locate the database connection configuration.
3. Update the `mysql`, `3306`, `panel`, `root`, and `password` variables with your MySQL database connection details.

Example:

```dotenv
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=your_database_name
DB_USERNAME=your_database_username
DB_PASSWORD=your_database_password

##Running the Project
  symfony server: start


## Usage

- To register a user, navigate to `localhost:port/register`.
- To login, go to `localhost:port/login`.
- After successful login, you will be redirected to the `/contact dashboard`.

## Note

This sample SB-Admin panel may contain errors and issues. Use it for demonstration purposes and learning.

