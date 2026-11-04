import inspect_sfvm as I

for cls in ('Lo7/c0$b;', 'Lo7/c0$b$a;'):
    print("===", cls, "===")
    I.dump_class(cls)
