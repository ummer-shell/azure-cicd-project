import time
from locust import HttpUser, task, between

class QuickstartUser(HttpUser):
    wait_time = between(1, 5)

    @task
    def test_prediction(self):
        data = {
                "CHAS":{
                    "0":0
                },
                "RM":{
                    "0":6.575
                },
                "TAX":{
                    "0":296.0
                },
                "PTRATIO":{
                    "0":15.3
                },
                "B":{
                    "0":396.9
                },
                "LSTAT":{
                    "0":4.98
                }
            }
        self.client.get("/")
        self.client.post("/predict", json=data)
