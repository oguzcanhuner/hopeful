# hopeful

This is a project which was massively inspired by one of Gary Bernhardt's earlier
screencasts on [DAS](https://www.destroyallsoftware.com/screencasts/catalog/building-rspec-from-scratch)

The idea is to recreate rspec from scratch to allow me (and whoever else) to use some of the
more advanced ruby language features. I want to create rspec functionality with a different
syntax. I'm thinking something along the lines of:

    i_hope{ something.call }.is true
    i_hope_for{ true }.to be_true
    please_let{ something }.be true

Along with the standard rspec should syntax

More than anything, I want this to be a hub for people to practice on, so anyone is welcome
to contribute, no matter what your level of skill. 

If you have any questions you can email me at oguzcanhuner@gmail.com.

TODO:

- turn this into a gem
- create descriptive exceptions
- implement more matchers
- create better code structure
- ALL THE THINGS
