import struct
import zlib
import gzip
import math

# Let's check if PIL is available, otherwise we can use PIL or pure numpy/struct
try:
    from PIL import Image, ImageDraw, ImageFont, ImageFilter
    print("PIL is available!")
except ImportError:
    print("PIL not available locally")
