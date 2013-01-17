Refactoring-Considered-Harmful
==============================

A talk on refactoring originally given at COMORichweb. To view the slides
just open index.html in any modern web browser that supports CSS3 transitions.
The source for the example worked is in the ```lib/code_example``` folder. To
 run the tests ensure you have at least ruby 1.9.3 installed, then run ```bundle install```,
finally followed by either ```ruby -I spec spec/code_example/isa_segment_identifier_spec.rb```
 for a single run or ```bundle exec guard``` if you'd like them to be run on
a change in a file so you can experiment w/ different refactorings.

<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/3.0/deed.en_US"><img alt="Creative Commons License" style="border-width:0" src="http://i.creativecommons.org/l/by-nc-sa/3.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" href="http://purl.org/dc/dcmitype/InteractiveResource" property="dct:title" rel="dct:type">Refactoring Considered Harmful</span> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/3.0/deed.en_US">Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License</a>.
