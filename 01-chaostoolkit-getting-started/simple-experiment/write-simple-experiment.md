Now it's time to write your first, simple chaos engineering experiment.

Experiments in the Chaos Toolkit are described declaratively using an open 
and implementation-agnostic JSON format. 

<pre class="file" data-filename="experiment.json" data-target="append">
{
    "title": "Does our service tolerate the loss of its exchange file?",
    "description": "Our service reads data from an exchange file, can it support that file disappearing?",
    "tags": [
        "tutorial",
        "filesystem"
    ],
</pre>