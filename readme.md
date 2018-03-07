py-iokit-matching-handler
=
Python library to consume `com.apple.iokit.matching` event when creating `LaunchAgents`.


Installation
-
	$ pip install -r requirements.txt
	$ python setup.py build_ext --inplace

Usage
-
```python
from PyIOKitMatchingHandler import IOKitMatchingHandler

# Consume an event
handler = IOKitMatchingHandler()
handler.handle()

# Application logic
...

```