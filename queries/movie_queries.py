movie_total_tickets_query = "select count(ticketId) as total from movie.tickets"
movie_review_query = "select stars, naam, bericht from movie.review where stars = %s;"