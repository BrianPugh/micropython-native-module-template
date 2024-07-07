import micropython
from pythontemplate import fnv1a32
import uprofiler


foo_native_module = uprofiler.profile(fnv1a32, name="fnv1a32_native_module")
fnv1a32("test_data" * 10_000)

uprofiler.print_results()
