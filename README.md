A library for Mint to use [Feather icons](https://feathericons.com/)

```mint
component Main {
    state iconAttributes : Attributes {
        width = 24,
        height = 24,
        stroke = "#a0c6e8",
        strokeWidth = 3,
        strokeLinecap = Linecap.Type::Square,
        strokeLinejoin = Linejoin.Type::Miter,
        viewBox = "0 0 24 24"
    }

    fun render : Html {
        <Feather icon={Icon::Activity} attributes={iconAttributes}/>
    }
}
```