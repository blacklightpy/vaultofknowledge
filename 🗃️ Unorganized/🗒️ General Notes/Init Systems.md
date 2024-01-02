They handle initialization of the system services.

## Runlevels (example)

| Functional             | Traditional | SystemD          |
| ---------------------- | ----------- | ---------------- |
| Pre-login screen       | 3           | multiuser.target |
| Display Manager Screen | 4 or 5      | graphical.target |

- Runit has 3 run levels