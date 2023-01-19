import importlib
import pkgutil

# recursively import all submodules so that challenges get registered.
for loader, module_name, is_pkg in pkgutil.walk_packages(__path__, __name__ + "."):
    importlib.import_module(module_name)
