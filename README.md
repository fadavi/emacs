# My Emacs Configuration File (Not tested yet)

**To Enable All Features:**
---------------------------

1. Install tern (`sudo` maybe required):
   ```
   $ npm install -g tern
   ```

2. Install these pip packages (`sudo` maybe required): 
   ```
   $ pip install jedi flake8 importmagic autopep8 yapf
   ```

3. Install powerline-compatible fonts:
   ```
   $ git clone https://github.com/powerline/fonts.git
   $ fonts/install.sh
   ```

4. Backup your .emacs file:
   ```
   $ cp ~/.emacs ~/.emacs.backup
   ```

5. Copy this file to ~/.emacs
   ```
   $ cp /path/to/this/file/.emacs ~/.emacs
   ```

6. Open Emacs. You will see some errors/warnings.. Ignore them!

7. `M-x package-install <RET> powerline <RET>`
8. `M-x package-install <RET> speedbar <RET>`
9. `M-x package-install <RET> sr-speedbar <RET>`
10. `M-x package-install <RET> js2-mode <RET>`
11. `M-x package-install <RET> tern <RET>`
12. `M-x package-install <RET> elpy <RET>`

*(`M`: Alt Key, `<RET>`: Enter Key)*

13. Restart Emacs
14. Enjoy... ;)
