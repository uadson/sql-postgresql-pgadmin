from settings import settings
from sqlmodel import Session, create_engine

engine = create_engine(settings.DATABASE_URL, echo=True)


def get_session():
    with Session(engine) as session:
        yield session
