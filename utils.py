
import yaml

# for 
import sys
# its win32, maybe there is win64 too?
if sys.platform.startswith('win'):
    import pathlib
    temp = pathlib.PosixPath
    pathlib.PosixPath = pathlib.WindowsPath

def read_yaml(fp):
    with open(fp) as file:
        # return yaml.load(file)
        return yaml.load(file, Loader=yaml.Loader)