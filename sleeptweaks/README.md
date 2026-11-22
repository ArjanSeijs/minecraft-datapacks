# Sleeptweaks
This datapack adds functionality to apply effects to a player when he wakes up.

# Status effects
By default when you wake up you get `absorption` `regeneration` and `hunger`.
You can modify the `sleeptweaks:config` storage to change the effects:
```typescript
// The config has the following type signature
config = {
    xp: {type:  "levels" | "xp", amount : number}
    effects: effects[]
}
effects = {
    amplifier: number
    duration: number
    effect: "minecraft:absorption" | "minecraft:regeneration" | ....
}
```

## Extensions
You can add a function to the `#sleeptweaks:effects` tag to be executed when a player wakes up.