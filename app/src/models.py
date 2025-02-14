from datetime import datetime
from sqlmodel import Field, SQLModel


class Employee(SQLModel):
    
    __tablename__ = "employees"
    
    id: int | None = Field(default=None, primary_key=True)
    name: str | None = Field(default=None, index=True)
    position: str | None = Field(default=None)
    salary:  float | None = Field(default=None, decimal_places=10, max_digits=2)
    hiring_date: datetime | None = Field(default=None)
