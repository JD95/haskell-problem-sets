# Haskell Problem Sets

A collection of problem sets for new Haskellers

Each folder contains a small project with a Problems.hs file filled with stub functions. Implement the functions and then test your solutions via

> stack test

## Contributing Problems

To add problems to a category, simply implement a stub for the function along with a comment describing what is expected. Along with the stub should be a spec in Tests.hs which then validates the problem. 

### Keep in mind
- It would be best if your test did not directly implement the function for the problem so curious eyes can't simply peek at the answer.
- As much as you can, keep the concepts required to solve the problem limited to the ones covered in that folder. For example, don't require use of intersperse in a Functor problem.

## Contributing Folders

These problem sets are meant to be practice with the various "foundational" concepts and libraries presented to people new to Haskell. While a tutorial for something like Aeson might be useful, it's unlikely to be very helpful to have problem sets for some obscure graphics package.

### Keep in mind
- The project folders follow a specific template. Follow that template to avoid confusion.
- Any resources you add to a folder's readme should be specifically related to the folder's concept. Don't simply link to the Haskell book and call it a day.
- Likewise, if there is a talk or video you want to link to, make sure that it links to the point in the talk which is actually relevant.
