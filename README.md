# OpenAPI Diff Action
Summarizes the difference between the head and base OpenAPI specs.
This action uses [OpenAPITools/openapi-diff](https://github.com/OpenAPITools/openapi-diff)

## Inputs
* `head-spec`: The path of the head(new) OpenAPI spec file.
* `base-spec`: The path of the base(old) OpenAPI spec file.
* `fail-on-incompatible`: If 'true', the action fails on backward-incompatible changes.

## Example
```
jobs:
  diff-openapi:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout Head
        uses: actions/checkout@v3
        with:
          path: 'head'

      - name: Checkout Base
        uses: actions/checkout@v3
        with:
          path: 'base'

      - uses: doohochang/openapi-diff-action@v0.1.0-alpha
        with:
          head-spec: 'head/schema/openapi.yml'
          base-spec: 'base/schema/openapi.yml'
```
