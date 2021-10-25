# How do I action

This Action wrap [howdoi](https://github.com/gleitz/howdoi) cli : it will search with howdoi cli a solution of an issue title, and post it as answer.

## Outputs

### issue comment

Github action will add answer in issue comment.
## Example usage

```yaml
on:
  issues:
    types:
      - opened
name: Search for solution with HowDoI
jobs:
  howdoi:
    runs-on: ubuntu-latest
    steps:
      - uses: ameausoone/howdoi-action:v1

```
