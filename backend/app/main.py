from fastapi import FastAPI

app = FastAPI(title="Gram Panchayat Budget Allocation Optimizer")


@app.get("/")
def root():
    return {"status": "ok", "message": "Budget Allocation Optimizer API"}


# TODO: add routers for village data, predictions, and allocation recommendations
