# winsplit.el

`winsplit.el` provides some simple commands for creating new windows in the
way I like. The commands are designed to be assigned to obvious key
bindings.

I like to use `use-package` and this is how I use this package:

```elisp
(use-package winsplit
    :ensure t
    :bind
    ([(control c) (right)]         . winsplit-right)
    ([(control c) (left)]          . winsplit-left)
    ([(control c) (up)]            . winsplit-above)
    ([(control c) (down)]          . winsplit-below)
    ([(control c) (control right)] . winsplit-right-load)
    ([(control c) (control left)]  . winsplit-left-load)
    ([(control c) (control up)]    . winsplit-above-load)
    ([(control c) (control down)]  . winsplit-below-load))
```
