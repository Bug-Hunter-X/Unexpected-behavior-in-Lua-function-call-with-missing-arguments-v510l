# Lua Implicit 'nil' Handling Bug

This repository demonstrates a subtle bug in Lua related to how functions handle missing arguments and implicit 'nil' values. The `foo` function is expected to return 'nil' when the argument 'a' is missing or `nil`, but it returns 1. This occurs because Lua implicitly passes 'nil' when no arguments are provided, causing the function to process the implicit nil and perform the addition. 

## Bug

The core issue lies in Lua's implicit handling of missing arguments.  When `foo()` is called without any arguments, Lua automatically passes `nil` as an argument. This leads to unexpected behavior if this implicit `nil` is not handled correctly within the function.  The solution below shows how to properly handle this scenario. 