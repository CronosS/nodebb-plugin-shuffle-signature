<h2>Shuffle signature</h2>
<p>
In signatures, a special <b>shuffle</b> block can be used.<br>
This will randomly displays one item from a defined set.<br>
There can be multiple <b>shuffle</b> blocks.<br><br>

A shuffle block is defined with 2 sets of parentheses.<br>
The first one being either <code>(shuffle)</code> or <code>(!)</code>, the second one containing the list of items. An item is defined inside square brackets <code>([item 1] [item 2])</code>.<br><br>

Image links will be automatically converted to an html image element <code>&lt;img src="myLink" alt="image"&gt;</code>.<br><br>

<h3>Examples</h3>
<b>Simple case</b><br>
<pre><code>My random quote of the day:
(shuffle)([My first random quote] [My second random quote])</code></pre><br>
will be randomly parsed to<br>
<pre><code>My random quote of the day:
My second random quote</code></pre>
or<br>
<pre><code>My random quote of the day:
My first random quote</code></pre><br><br>

<b>Complex case</b><br>
<pre><code>Random picture:
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
)</code></pre>
can gives<br>
<pre><code>Random picture:
My second caption:
&lt;img src="http://my.second/picture.png" alt="image"&gt;

Random quote:
My first random quote</code></pre><br>

<p class="alert alert-info">Note that the image link has been automatically converted to an <b>img</b> element.</p>
</p>