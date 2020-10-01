# Why bash-config?

## The problem

As you may aleady know, `~/.bashrc` is the individual per-interactive-shell startup file for `bash` shell.

But with time comes more and more lines and this file usualy ends up bloated and unreadable.

## The idea

Divide this file and conquer readability plus configurability.

## The solution

Split the `~/.bashrc` into simple fragment files.

Each fragment files are located in the `~/.config/bash/bashrc.d` directory and end with `.bashrc` extension filename.

## The installation

From github, with Shell:

```sh
{
  bash_config=~/.config/bash
  
  rm -rf ${bash_config} && \
  mkdir -p ${bash_config} && \
  curl -fsSL \
       -H "Accept: application/vnd.github.v3+json" \
       https://api.github.com/repos/jdelagnes/bash-config/tarball/master \
  | tar zx --strip-components 1 -C ${bash_config} && \
  ln -sf ${bash_config}/bashrc .bashrc
}
```
