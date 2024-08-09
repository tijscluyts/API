from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
import database
from queries import movie_queries as queries
from models import models

app = FastAPI()

origins = [
    "http://localhost:7777",
    "https://localhost",
    "http://127.0.0.1:8080",
    "https://127.0.0.1:8080",
    "https://api-eight-khaki.vercel.app/ticket"
]

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

@app.post("/nieuwe_review")
def create_review(review: models.review):
    query = queries.insert_review_query
    success = database.execute_sql_query(query, (
        review.stars,
        review.naam,
        review.bericht,
    ))
    if success:
        return review
@app.get("/ticket")
def get_sum_tickets():
    query = queries.movie_total_tickets_query
    ticket = database.execute_sql_query(query)
    if isinstance(ticket, Exception):
        return ticket, 500
    total_tickets = []
    for i in ticket:
        tidict = {
            "total": i[0]
        }
        total_tickets.append(tidict)
    return {'ticket': total_tickets}

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
