# Sea Catch Adventure Backend
Welcome to the backend repository of Sea Catch Adventure, a catch game and leaderboard web application built with Ruby on Rails.


## Introduction
Sea Catch Adventure is a web application designed to provide users with an entertaining catch game experience while also allowing them to compete for high scores on a global leaderboard.


## Installation and Setup
1. Clone this repository to your local machine
```bash
  git clone https://github.com/MathieuParadis/catcher-game-api.git
```

2. Navigate to the project directory
```bash
  cd catcher-game-api
```

3. Install dependencies
```bash
  bundle install
```

4. Create, migrate and seed the database
```bash
  rails db:create
  rails db:migrate
  rails db:seed
```

5. Start the server
```bash
  rails server
```

The backend server will now be running at http://localhost:3000


## Deployment
Deploy this backend to a hosting service like Heroku or AWS for production use.


## Technologies Used
* Ruby on Rails
* PostgreSQL


## Endpoints
### `/api/scores`
#### GET Method
- **Description:** Retrieves the top score records. Optionally, you can specify the number of records to fetch using the `limit` parameter. By default, it returns 100 records.
- **Endpoint:** `/api/scores?limit`
- **Request Type:** GET
- **Query Parameters:**
  - `limit` (optional): Number of records to fetch (default: 100).
- **Response:** JSON array containing score record objects with the player names and scores, ordered by score.
- **Example Request (fetching top 10 records):**
  ```bash
    curl http://localhost:3000/api/scores?limit=10
  ```
- **Example Response:**
  ```json
    [
      {"id": 1, "playerName": "player1", "score": 1000},
      {"id": 2, "playerName": "player2", "score": 950},
      ...
    ]
  ```

#### POST Method
- **Description:** Submits a new score record.
- **Endpoint:** `/api/scores`
- **Request Type:** POST
- **Request Body:**
  ```json
    {
      {
        "player_name": "player_name",
        "score": 1200
      }
    }
  ```
- **Example Request (fetching top 10 records):**
  ```bash
    curl -X POST -H "Content-Type: application/json" -d '{"player_name": "player1", "score": 1200}' http://localhost:3000/api/scores
  ```
- **Example Response:**
  ```json
    {"id": 1, "player_name": "player1", "score": 1200}
  ```

## Enhancements
### Real-Time Score Updates with Action Cable
Implementing real-time score updates using Action Cable can greatly enhance the user experience of Sea Catch Adventure. With Action Cable, users can see live updates of scores as they are submitted by other players, creating a more engaging and interactive gaming environment.
