from pydantic import BaseModel


class tickets(BaseModel):
    total: int

class review(BaseModel):
    stars: int
    naam: str
    bericht: str