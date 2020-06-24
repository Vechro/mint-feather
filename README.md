A library for Mint to use [Feather icons](https://feathericons.com/)

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