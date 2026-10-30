# LocalKinAI Homebrew tap

```bash
brew tap localkinai/tap
brew trust --formula localkinai/tap/kinfer
brew install localkinai/tap/kinfer
```

Homebrew 7 loads a formula from a tap of its own only once it is trusted; the
second line trusts kinfer's alone (`brew untrust` takes it back).

[kinfer](https://github.com/LocalKinAI/kinfer) is a single-file local inference
runtime for agent fleets: one binary for Apple Silicon Macs, llama.cpp inside.
`brew upgrade` picks up new releases.
