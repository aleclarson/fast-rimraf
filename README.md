# @alloc/fast-rimraf

`fast-rimraf` first moves the directory, you want to delete, into another location so in the blink of an eye you have an empty space in the parent directory. Then it deletes the moved directory in background in order to free space in your disk.

## Usage

```
pnpm i @alloc/fast-rimraf -D
```

In your `package.json`:

```json
"scripts": {
  "build": "rimraf dist && [your script here]"
}
```
