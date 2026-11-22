# Schedulelib

A datapack library for scheduling commands and or functions with macro arguments and entity execution contexts.

## Documentation
See the folder `data/schedulelib/function/api` for the IMP-doc

### Schedule a function with arguments:
```mcfunction
#> foo.mcfunction
say Hello $(user)

#> bar.mcfunction
function schedulelib:schedule {function: '<namespace>:foo', time: '1s', args : {user:Mojang!}}
# or equivalent
function schedulelib:api/schedule_function {function: '<namespace>:foo', time: '1s', args : {user:Mojang!}}

# Output after 1 Second: [Server] Hello Mojang!
```

### Schedule a function with arguments as all players
```mcfunction
function schedulelib:api/schedule_function_ctx {function: '<namespace>:foo', time: '1s', args : {user:Mojang!}}

# Output after 1 Second: [Player1] Hello Mojang!
```

### Directly schedule a command
```
function schedulelib:api/schedule_command_ctx {command: "say Hello World", time: "1s"}
# Output after 1 Second: [Player1] Hello World!
```

### Clear all scheduled commands
```
function schedulelib:api/clear_all
```