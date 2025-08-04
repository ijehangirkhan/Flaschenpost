import requests

# Function to fetch movie titles from the API based on a substring
def getMovieTitles(substr):
    titles = []
    base_url = 'https://jsonmock.hackerrank.com/api/movies/search/?Title='
    page = 1

    while True:
        # Query the API
        response = requests.get(f'{base_url}{substr}&page={page}')

        # Save the response data
        data = response.json()

        # Extract movie titles
        for movie in data['data']:
            titles.append(movie['Title'])

        # Break if we've fetched all pages
        if page >= data['total_pages']:
            break

        page += 1

    # Sort the movie titles alphabetically
    titles.sort()
    return titles


# Example usage of the getMovieTitles function
if __name__ == "__main__":
    search_term = input("Enter a movie search term: ")
    results = getMovieTitles(search_term)
    print("\nMovie Titles:")
    for title in results:
        print(title)