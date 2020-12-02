from django.test import TestCase

class HealthcheckTest(TestCase):
    def test_healthcheck(self):
        res = self.client.get('/healthcheck/')
        self.assertEqual(res.status_code, 200)
