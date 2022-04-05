"""Sample hello world microservice. With logging."""

import sys
from fastapi import FastAPI, Request

app = FastAPI()


@app.get("/")
async def root(request: Request):
    """Root endpoint"""
    # log the http request
    print(f"Host: {request.client.host}, url: {request.url}", file=sys.stderr)
    return {"message": f"Hello {request.client.host}"}

