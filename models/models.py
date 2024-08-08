from pydantic import BaseModel


class tickets(BaseModel):
    ticketId: int

class review(BaseModel):
    stars: int
    naam: str
    bericht: str