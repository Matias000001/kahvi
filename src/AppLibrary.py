# pylint: disable=invalid-name
# pylint: disable=too-few-public-methods
import requests

class AppLibrary:
    def __init__(self):
        self._base_url = "http://localhost:5001"

    def reset_application(self):
        requests.post(f"{self._base_url}/tests/reset", timeout=10)
