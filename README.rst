``tentry()`` and ``tans()`` are very simple TIGCC programs that return a previous answer/entry from the Home screen history area, but, unlike the built-in ``ans()``/``entry()`` functions, they will retrieve the top-most entry, not the most recent one.

Motivation
----------
I sometimes find it more productive to recall answers from the top.
Contrary to its built-in counterpart, ``tans()`` ids do not change (unless you delete an entry from the middle of the stack). This makes ``tans()`` very useful to refer to previously entered expressions. You won't need to store the answers in variables, just write down the equation number[1] and invoke it using ``tans()`` the next time you need it.

[1]: The number assigned to last entry is shown at the bottom right of a TI-89 calculator. BTW, you can change the capacity of stored entries from the default 30 to 99: press ``<diamon>+|``.