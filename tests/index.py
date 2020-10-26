import os
import unittest
import sys
sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from app import app


class BaseTest(unittest.TestCase):
  def setUp(self):
    app.config['TESTING']=True
    app.config['DEBUG'] = False
    app.config['DEBUG'] = False
    self.app = app.test_client()
  def tearDown(self):
    pass

  ###############
  #### tests ####
  ###############

  def test_main_page(self):
    response = self.app.get('/')
    self.assertEqual(response.status_code, 200)

if __name__ == "__main__":
    unittest.main() 