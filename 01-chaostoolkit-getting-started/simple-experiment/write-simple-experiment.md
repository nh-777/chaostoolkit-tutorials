Now it's time to write your first, simple chaos engineering experiment.

Experiments in the Chaos Toolkit are described declaratively using an open 
and implementation-agnostic JSON format.

Experiments start with a `title`, a `description`, and some optional `tags` 
that can help when you have a catalogue of experiments to work with. 
Your experiment here is simply going to ensure that the service should not break if a file is removed, and instead simply try again until the file comes back:

<pre class="file" data-filename="experiment.json" data-target="replace">
{
    "title": "Does our service tolerate the loss of its exchange file?",
    "description": "Our service reads data from an exchange file, can it support that file disappearing?",
    "tags": [
        "tutorial",
        "filesystem"
    ],
</pre>

Copy the above code into the `experiment.json` file and then it's time to implement the `steady state-hypothesis` for this experiment.
