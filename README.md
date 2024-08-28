# LOOM-LEGACY

LOOM-LEGACY is a full-fledged Rails application designed to streamline the management of a textile company’s operations. This project integrates various departments such as production, inventory, and sales to enhance overall efficiency. The app is hosted on AWS EC2 and uses PostgreSQL for robust data management, ensuring scalability and data integrity.
Features

    Department Integration: Allows seamless communication between production, inventory, and sales departments.
    Feedback Management System: Collects and stores user feedback to continuously improve business processes.
    Visitor Tracking: Utilizes Ahoy, Geocoder, and Browser gems to monitor visitor behavior and location in real time.
    PostgreSQL Backend: Uses PostgreSQL as the database for production environments, ensuring secure and efficient data handling.
    AWS EC2 Deployment: Deployed on Amazon EC2 for scalability and flexibility in the cloud environment.

Getting Started
Prerequisites

    Ruby 3.x
    Rails 7.1
    PostgreSQL
    AWS EC2 instance (for production setup)

Installation

    Clone the repository:

    bash

git clone https://github.com/AliIshaqPro/LOOM-LEGACY.git
cd loom-legacy

Install dependencies:

bash

bundle install

Set up the database:

bash

rails db:create
rails db:migrate

Start the Rails server:

bash

    rails server

Environment Setup

    Development: SQLite is used as the default database in development mode.
    Production: PostgreSQL is configured for the production environment. Ensure your EC2 instance is properly set up and the database is ready.

Deployment

    Ensure your EC2 instance is up and running.
    Deploy the application using Capistrano or manually by pushing your changes to the EC2 server.

Usage

    Navigate to your domain (e.g., https://aliishaq.site) to access the application.
    Users can view inventory, manage production schedules, and submit feedback via the built-in system.

Gems Used

    devise: Authentication solution for Rails applications.
    mail: Library to handle email sending and receiving.
    pg: PostgreSQL adapter for database connectivity.
    ahoy_matey: Visitor tracking and analytics.
    actionmailer: Email integration for notifications and communication.
    geocoder: Location-based services for user tracking.
    browser: Detection of browser-specific behaviors.


Future Improvements

    Enhance feedback system with more detailed reporting.
    Improve UI/UX for better user interaction.
    Implement automated deployment pipelines.

License

This project is licensed under the AIT License.
