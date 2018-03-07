from distutils.core import setup
from distutils.extension import Extension
from Cython.Build import cythonize

ext_modules=[
	Extension('PyIOKitMatchingHandler',
				sources=[
					'PyIOKitMatchingHandler.pyx',  
					'xpc_set_event_stream_handler/main.m'
				],
				extra_link_args=['-framework', 'Foundation'],
				libraries=["m"]
	)
]

setup(
	name = 'py-iokit-matching-handler',
	ext_modules = cythonize(ext_modules)
)
