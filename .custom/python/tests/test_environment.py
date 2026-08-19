def test_config_dependencies_import() -> None:
    import jinja2
    import rich
    import tomli_w
    import watchdog
    import yaml

    assert all((jinja2, rich, tomli_w, watchdog, yaml))
