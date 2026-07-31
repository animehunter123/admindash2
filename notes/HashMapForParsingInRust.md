Learned this from AI, really useful to know as JSON can be:

[] <-- list

[k,v] <-- a key value which is KNOWN AT RUNTIME

[k:sizeunknown,v:sizeunknown] <-- which is our current bookmarks json file.

Therefore, see below...






This is a great example because it introduces another JSON type: **maps** (also called dictionaries or hash maps).

Your JSON is:

```json
{
  "TEST01": {
    "Rocky Linux": "https://rockylinux.org/"
  },
  "TEST02": {
    "Python Docs": "https://docs.python.org/",
    "Javascript Docs": "https://developer.mozilla.org/en-US/docs/Web/JavaScript",
    "DIVIDER1": "iii",
    "@W2Schools JS": "https://www.w3schools.com/js/",
    "@Kubernetes Docs": "https://kubernetes.io/docs/home/"
  }
}
```

Notice that **you don't know the field names ahead of time**.

They're not fixed like:

```json
{
    "label": "...",
    "url": "..."
}
```

Instead they're arbitrary:

* `"TEST01"`
* `"TEST02"`
* maybe tomorrow `"TEST03"`

Likewise, inside `"TEST02"` the keys are also arbitrary:

* `"Python Docs"`
* `"Javascript Docs"`
* `"@W2Schools JS"`

That means a Rust `struct` isn't a good fit.

Instead, use a `HashMap`.

---

## This JSON corresponds to

```rust
use std::collections::HashMap;

type Data = HashMap<String, HashMap<String, String>>;
```

or equivalently

```rust
let data: HashMap<String, HashMap<String, String>> =
    serde_json::from_str(&filedata)?;
```

No structs are needed.

---

Then you can access things like this:

```rust
println!("{}", data["TEST01"]["Rocky Linux"]);
```

prints

```
https://rockylinux.org/
```

or, more safely:

```rust
if let Some(test02) = data.get("TEST02") {
    if let Some(url) = test02.get("Python Docs") {
        println!("{url}");
    }
}
```

---

## When do you use a struct?

Use a struct when the JSON always has the same fields.

For example:

```json
{
    "label": "Google",
    "url": "https://google.com"
}
```

always has

* `label`
* `url`

so

```rust
struct Button {
    label: String,
    url: String,
}
```

is perfect.

---

## When do you use a HashMap?

Use a `HashMap` when the keys are data themselves.

For example:

```json
{
    "Alice": 25,
    "Bob": 31,
    "Charlie": 18
}
```

You wouldn't write

```rust
struct People {
    Alice: u32,
    Bob: u32,
    Charlie: u32,
}
```

because tomorrow there might be `"Dave"` instead.

Instead:

```rust
HashMap<String, u32>
```

---

So your JSON is naturally:

```text
HashMap
│
├── "TEST01"
│      │
│      └── HashMap
│             └── "Rocky Linux" -> "https://rockylinux.org/"
│
└── "TEST02"
       │
       ├── "Python Docs" -> "https://docs.python.org/"
       ├── "Javascript Docs" -> "https://..."
       └── ...
```

That translates directly to:

```rust
HashMap<String, HashMap<String, String>>
```

As a rule of thumb:

* **Known field names** → `struct`
* **Unknown or dynamic field names** → `HashMap`
* **Ordered list of items** → `Vec<T>`

