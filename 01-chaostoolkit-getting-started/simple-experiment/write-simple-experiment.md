Now it's time to write your first, simple chaos engineering experiment.

Experiments in the Chaos Toolkit are described declaratively using an open 
and implementation-agnostic JSON format.

Experiments start with a `title`, a `description`, and some optional `tags` 
that can help when you have a catalogue of experiments to work with. 
Your experiment here is simply going to look for the presence of a file on your 
local system and, if it's there, declare that all is ok:

<pre class="file" data-filename="experiment.json" data-target="replace">
{
    "title": "Is all ok after a particular file is deleted?",
    "description": "The system's steady-state-hypothesis should be within tolerances even when a particular file is deleted",
    "tags": [
        "tutorial",
        "filesystem"
    ],
</pre>

Copy the above code into the `experiment.json` file and then it's time to implement the `steady state-hypothesis` for this experiment.
