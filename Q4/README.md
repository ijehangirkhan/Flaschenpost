# Movie Title Search

This Python script fetches and displays a sorted list of movie titles that match a search term using the [HackerRank Mock API](https://jsonmock.hackerrank.com/api/movies/search).

## Features

- Queries the HackerRank movie search API using a substring.
- Handles multiple pages of API results.
- Extracts and prints all matching movie titles in **alphabetical order**.
- Clean design with a reusable function.

## Requirements

- Python 3.x
- `requests` library

Install `requests` library using:

```bash
pip install requests
```

## Usage

- Run the code using:
```bash
python code.py
```
- Enter a search term when prompted, e.g. Batman