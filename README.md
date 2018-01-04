# Welcome to the Chaos Toolkit Tutorials!

This repository contains a set of tutorials to get started about Chaos Toolkit
and learn how to come up with your own Chaos Engineering experiments.

The tutorials can be followed live, and freely, on [Katacoda][katacoda] without
having to install anything on your machine until you are ready.

[katacoda]: https://www.katacoda.com/chaostoolkit/

## Contribute

Contributors to this project are welcome as this is an open-source effort that
seeks [discussions][join] and continuous improvement.

[join]: https://join.chaostoolkit.org/

### Courses

Contributing new courses is done by creating new directories containing
respecting the layout described by the [Katacoda documentation][katadoc].

[katadoc]: https://www.katacoda.com/docs

If you want to add a whole new course, you must create a top-level directory.
Its name should indicate what users will learn from scenarii in that courses.

The directory name must start with a double-digit indicating the order in which
the course should be displayed on the Katacoda portal.

If you add a new scenario to an existing course, add a subdirectory to its
directory. Then add the necessary common data:

- the `index.json` file which is the metadata from Katacoda describing the
  course setup and content.
- the `assets` directory with any files you wush to upload to the environment.
  Those files must be listed in the `index.json` file.
- the `env-init.sh` file containing steps Katacoda will run in the background
  when the scenario starts.
- the `env-post-init.sh` file containing steps Katacoda will run in the
  foreground when the scenario starts.

Any number of markdown files holding the content of the scenario.

### Code

From a code perspective, if you wish to contribute, you will need to run a 
Python 3.5+ environment. Then, fork this repository and submit a PR. The
project cares for code readability and checks the code style to match best
practices defined in [PEP8][pep8].

[pep8]: https://pycodestyle.readthedocs.io/en/latest/
