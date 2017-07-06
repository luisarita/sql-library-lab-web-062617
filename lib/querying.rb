def select_books_titles_and_years_in_first_series_order_by_year
    "SELECT title, year FROM books WHERE series_id=1 ORDER BY year"
end

def select_name_and_motto_of_char_with_longest_motto
    "SELECT name, motto FROM characters ORDER BY LENGTH(motto) DESC LIMIT 1"
end

def select_value_and_count_of_most_prolific_species
    "SELECT species, COUNT(*) FROM characters GROUP BY species ORDER BY COUNT(*) DESC LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
    "SELECT a.name, g.name FROM authors a JOIN series s ON s.author_id=a.id JOIN subgenres g ON g.id=s.subgenre_id"
end

def select_series_title_with_most_human_characters
    "SELECT s.title FROM characters c, series s WHERE s.id=c.series_id AND species='human' GROUP BY s.title ORDER BY COUNT(*) DESC LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
    "SELECT c.name, COUNT(*) FROM characters c, character_books cb WHERE cb.character_id=c.id GROUP BY c.name ORDER BY COUNT(*) DESC, c.name"
end
