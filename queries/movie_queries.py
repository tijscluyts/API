movie_total_tickets_query = "select count(ticketId) from movie.tickets"
movie_review_query = "select * from movie.review where stars = %s;"