from pydantic import BaseModel

class review(BaseModel):
    stars: int
    naam: str
    bericht: str

class tickets(BaseModel):
    total: int

