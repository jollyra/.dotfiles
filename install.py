#!/usr/bin/env python

import os
import glob

def symlink(src, link_name):
    if os.path.isfile(link_name) or os.path.islink(link_name):
        print('Skipping existing path {}'.format(link_name))
    else:
        os.symlink(src, link_name)
        print('Created symlink {} -> {}'.format(src, link_name))

def symlink_dotfiles():
    home = os.environ['HOME']
    dotfiles_path = os.path.dirname(os.path.realpath(__file__))

    ignore_list = ['git', 'gitignore', 'DS_Store']

    # Files starting with . and not in the ignore list
    dotfiles = [f for f in glob.glob('.*') if not any(f.endswith(x) for x in ignore_list)]

    for f in dotfiles:
        link_name = os.path.join(home, f)
        source_name = os.path.join(dotfiles_path, f)
        symlink(source_name, link_name)

def main():
    print('Symlinking dotfiles to HOME directory')
    symlink_dotfiles()

if __name__ == '__main__':
    main()
