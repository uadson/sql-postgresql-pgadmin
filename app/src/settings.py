from decouple import config
from pydantic import BaseModel


class Settings(BaseModel):
    DATABASE_URL: str = config('DATABASE_URL')
    
settings: Settings = Settings()
