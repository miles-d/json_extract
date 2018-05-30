# JSON_EXTRACT

A utility written to extract parts of JSON from STDIN.  
Requires Python.  
Put it somewhere in your `$PATH`.

Usage:

Given `sample.json` with following content:

    {
      "first_level_key": {
        "second_level_key": [
          "foo",
          "bar"
        ]
      }
    }

The following wil get `"bar"`:

    cat sample.json | json_extract first_level_key.second_level_key.1
