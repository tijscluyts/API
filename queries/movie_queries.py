movie_total_tickets_query = "select count(ticketId) as total from movie.tickets"
movie_review_query = "select stars, naam, bericht from movie.review where stars = %s;"
insert_review_query = "insert into movie.review (stars, naam, bericht) values (%s, %s, %s);"