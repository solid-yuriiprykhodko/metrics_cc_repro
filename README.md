# Global executable not working correctly with nested analysis options

## This example structure

This package depends on solid_lints.

`solid_lints` provide predefined metric thresholds, as well as enable a set of analysis options.

This project's analysis options `include` the `analysis_options.yaml` from the package.

## Instructions to reproduce

1. Install `dart_code_metrics:metrics` globally:

    ```shell
    dart pub global activate dart_code_metrics
    ```

2. Get dependencies:

    ```shell
    dart pub get
    ```

3. Run metrics locally, observe cyclomatic complexity detected:

    ```shell
    dart run dart_code_metrics:metrics analyze test
    ```

    ```text
    ❯ dart run dart_code_metrics:metrics analyze test                          9s
    Building package executable... (1.7s)
    Built dart_code_metrics:metrics.
    test/test_metrics_test.dart:
    ALARM   main
            cyclomatic complexity: 28
    ```

4. Run metrics from a global executable, observe that no issues are detected:

    ```shell
    metrics analyze test
    ```

    ```text
    ❯ metrics analyze test                           
    ✔ no issues found!
    ```

5. Paste the contents of `solid_lints` [analysis_options.yaml](https://github.com/solid-software/solid_lints/blob/master/lib/analysis_options.yaml) into local `analysis_options.yaml`.

6. Re-run metrics from global executable -- now the results are as expected:

    ```text
    ❯ metrics analyze test
    test/test_metrics_test.dart:
    ALARM   main
            cyclomatic complexity: 28
    ```
