# libftprintf

As a 42 student, I can't use some standard libraries in C, so I have to create my own in an excercise of further comprehension of the functions which I utilise daily in my advances through the 42 Cursus.

Following that note, the goal of this repository is to create exacly that, my own version of those Standard C Library functions and some more that I find useful so I can have access to them in the future.

## How does it work?

It creates a library called **libftprintf.a** with all those functions I might need in my projects.

If you want to use the library, first you have to download the files by cloning the git repository:
```
git clone git@github.com:PaLucena/libftprintf.git
```

To create that library, all you need to do (if you have it installed) is to enter the project and call `make`;

```
cd libftprintf
make
```

That should create a libftprintf.a file and an *obj* folder with some .o files in it.

To remove all those files once you're finished just call `make fclean`

## How to use it

For the moment, this library includes **libft** and **printf**. You have to tell the file where your library resides and which library it's using:
```
gcc example.c -I libftprintf/includes -L . -lftprintf
```

`-L` takes the path to your library. . in this case
`-l`takes the name of your library. This is the set of characters that come after *lib* in your library name.
