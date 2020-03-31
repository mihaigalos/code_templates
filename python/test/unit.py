import unittest
import os.path

from example import Example


class PathTest(unittest.TestCase):
    def test_whenTypical(self):
        self.assertTrue(os.path.isfile("test/input_data.txt") == True)


if __name__ == "__main__":
    unittest.main()
