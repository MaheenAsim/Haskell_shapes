# Haskell Shapes Program ^_^

This Haskell program generates various ASCII shapes, including squares, triangles, diamonds, hexagons, and more. Each shape is produced by its own function, making the code modular and easy to extend or modify. The shapes are displayed in sequence, separated by lines for clarity.

## Features

- **Square**: Generates a filled square of `*` characters.
- **Triangle**: Creates a right-aligned triangle.
- **Diamond**: Produces a symmetrical diamond shape.
- **Hexagon**: Forms a hexagon pattern with top, middle, and bottom sections.
- **Plus**: Draws a plus sign in the middle of a square.
- **Star**: Creates a star-like shape with a single column.
- **Hollow Square**: Generates a square with `*` borders and a hollow center.
- **Separator**: Adds a line between shapes for better readability.

## Usage

To run this programmm:

1. Clone or download this repository.
2. Compile and run the Haskell file using `ghc` or `runhaskell`:

   ```bash
   runhaskell Shapes.hs
   ```

   or

   ```bash
   ghc Shapes.hs -o shapes
   ./shapes
   ```

## Code Overview

The main function in `Shapes.hs` file is responsible for displaying each shape in sequence:

```haskell
main :: IO ()
main = putStr $ unlines $ concat shapes
```

Each shape function generates a list of strings representing the shape:

- `square`: Creates a solid square by repeating rows of `*`.
- `triangle`: Builds a triangle by progressively increasing the number of `*` per row.
- `diamond`: Constructs a diamond shape with spaces for symmetry.
- `hexagon`: Forms a hexagonal shape with aligned rows.
- `plus`: Draws a plus sign in the center of a square.
- `star`: Forms a star-like shape with a centered line.
- `hollowSquare`: Produces a square with `*` borders and a hollow center.

Each shape is separated by a line for readability, provided by the `separator` function.



You can adjust the shape size by modifying the input number in each shape function call within the `shapes` list.

## Customization

To add more shapes or modify existing ones, you can define new functions in the same format and append them to the `shapes` list.
:)
