# Debugging

This library uses a few _G flags to turn on debugging features. They’re useful for troubleshooting but might hurt performance, so don’t enable them in production.

## `_G.__RE_LOGGING__`

Set `_G.__RE_LOGGING__` to true to enable debug logs. It’s handy for spotting issues in the package or getting more details about what’s happening under the hood.

```lua
_G.__RE_LOGGING__ = true
```