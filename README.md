# winsplit.el

## Commentary:

`winsplit.el` provides some simple commands for creating new windows in the
way I like. The commands are designed to be assigned to obvious key
bindings.

I like to use [`use-package`](https://github.com/jwiegley/use-package) and
this is how I use this package:

```elisp
(use-package winsplit
  :ensure t
  :bind*
  ("C-c <right>"   . winsplit-right)
  ("C-c <left>"    . winsplit-left)
  ("C-c <up>"      . winsplit-above)
  ("C-c <down>"    . winsplit-below)
  ("C-c C-<right>" . winsplit-right-load)
  ("C-c C-<left>"  . winsplit-left-load)
  ("C-c C-<up>"    . winsplit-above-load)
  ("C-c C-<down>"  . winsplit-below-load))
```
