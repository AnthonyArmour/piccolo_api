#!/bin/bash
# To run all in a folder tests/
# To run all in a file tests/test_foo.py
# To run all in a class tests/test_foo.py::TestFoo
# To run a single test tests/test_foo.py::TestFoo::test_foo
export PYTHONPATH="$PWD:$PYTHONPATH"
export PICCOLO_CONF="tests.postgres_conf"
cd .. && python -m pytest --cov=piccolo_api -s $@
