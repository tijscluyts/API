from fastapi import FastAPI
import database
from queries import movie_queries as queries
from models import models

app = FastAPI()

@app.get("/ticket")
def get_sum_tickets():
    query = queries.movie_total_tickets_query
    ticket = database.execute_sql_query(query)
    if isinstance(ticket, Exception):
        return ticket, 500
    return ticket[0]

@app.get("/review")
def get_all_review(stars: int):
    query = queries.movie_review_query
    review = database.execute_sql_query(query, (
        stars,
    ))
    if isinstance(review, Exception):
        return review, 500
    review_to_return = []
    for i in review:
        reviewdict = {
            "stars": i[0],
            "naam": i[1],
            "bericht": i[2]
        }
        review_to_return.append(reviewdict)
    return {'review': review_to_return}
