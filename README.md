nodebb-plugin-shuffle-signature
===============================

Allows users to randomly display one item from a set defined in their signature.

## How to

In signatures, a special **shuffle** block can be used.  
This will randomly displays one item from a defined set.  
There can be multiple **shuffle** blocks.  

A shuffle block is defined with 2 sets of parentheses.  
The first one being either `(shuffle)` or `(!)`, the second one containing the list of items. An item is defined inside square brackets `([item 1] [item 2])`.

Image links will be automatically converted to an html image element `<img src="myLink" alt="image">`.

## Examples
**Simple case**

	My random quote of the day:
	(shuffle)([My first random quote] [My second random quote])

will be randomly parsed to

	My random quote of the day:  
	My second random quote

or

	My random quote of the day:  
	My first random quote 

**Complex case**

	Random picture:
	(!)(
	[My first caption:
	http://my.first/picture.png]
	[My second caption:
	http://my.second/picture.png]
	)
	
	Random quote:
	(!)(
	[My first random quote]
	[My second random quote]
	)

can gives

	Random picture:
	My second caption:
	<img src="http://my.second/picture.png" alt="image">
	
	Random quote:
	My first random quote

>Note that the image link has been automatically converted to an **img** element.
