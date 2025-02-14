def max_movies_to_watch(movies: list) -> tuple:
    movies.sort(key=lambda x: x[1])

    return len(new_movies), new_movies


movies = [(1,4), (3,5), (0,6), (5,7), (8,9), (5,9)]
print(max_movies_to_watch(movies))