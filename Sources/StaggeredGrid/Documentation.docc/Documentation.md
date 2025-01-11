# ``StaggeredGrid``

A view to layout children in a staggered way.

## Overview

You place your views inside a ``StaggeredGrid`` view and they will be laid out in a staggered grid layout.

```swift
StaggeredGrid {
  Item(text: "Fish")
  Item(text: "Gloomy")
  Item(text: "Clutter up")
}
```

When there are enough width:

![](large_w.jpg)

When there are not enough width:

![](small_w.jpg)

By default, the layout will perform animation when the width is changed.
You can disable it by setting `animated` to `false` in the initializer.

> Note: To add spacing between items, you use `padding` modifier to your items view. This StaggeredGrid currently does not support spacing between items.
