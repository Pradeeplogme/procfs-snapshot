import os
import unittest
from model import SystemStats
from parsers.vmstat import parse_vmstat

class VmStatParserTest(unittest.TestCase):

    def setUp(self):
        with open(os.path.join(os.path.dirname(__file__), 'vmstat.tail'), 'rb') as f:
            self.example = f.read()

    def test_correct_type_must_be_passed_into_parse_vmstat(self):
        self.assertRaises(TypeError, parse_vmstat, None, self.example)

    def test_process_vmstat_parsing(self):
        stats = SystemStats()
        parse_vmstat(stats, self.example)
        self.assertEqual(1498, stats.vmstats['nr_free_pages'])
        self.assertEqual(195206, stats.vmstats['pgpgin'])
        self.assertEqual(86876, stats.vmstats['pgpgout'])
        self.assertEqual(1, stats.vmstats['pswpin'])
        self.assertEqual(4, stats.vmstats['pswpout'])
        self.assertEqual(3145035, stats.vmstats['pgalloc_normal'])
        self.assertEqual(3146697, stats.vmstats['pgfree'])
        self.assertEqual(23980, stats.vmstats['pgactivate'])
        self.assertEqual(2912, stats.vmstats['pgdeactivate'])
        self.assertEqual(6400176, stats.vmstats['pgfault'])
        self.assertEqual(1292, stats.vmstats['pgmajfault'])
        self.assertEqual(42, stats.vmstats['pageoutrun'])
        self.assertEqual(2, stats.vmstats['allocstall'])

if __name__ == '__main__':
    unittest.main()