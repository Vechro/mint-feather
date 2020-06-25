# mint-feather

A library for Mint to use [Feather icons](https://feathericons.com/).

The Feather component in this library requires an icon property and optionally an attributes property (if omitted, it will use default attributes instead).

When browsing the feather icons on the official website, the naming differs slightly from what you see on the website. Every word is capitalized and dashes are removed:

So `alert-octagon` becomes `Icon::AlertOctagon`, `x-square` becomes `Icon::XSquare`, etc.

## Example
```mint
component Main {
  state iconAttributes : Attributes {
    width = "100%",
    height = "100%",
    stroke = "#a0c6e8",
    strokeWidth = "3px",
    strokeLinecap = Linecap.Type::Square,
    strokeLinejoin = Linejoin.Type::Miter,
    viewBox = "0 0 24 24"
  }

  fun render : Html {
    <Feather icon={Icon::Activity} attributes={iconAttributes}/>
  }
}
```

## Default attributes

If no attributes are provided to the component, then it will default to the following values:

```mint
property attributes : Attributes =
  {
    width = "100%",
    height = "100%",
    stroke = "currentColor",
    strokeWidth = "2",
    strokeLinecap = Linecap.Type::Round,
    strokeLinejoin = Linejoin.Type::Round,
    viewBox = "0 0 24 24"
}
```