c = get_config()  # noqa

c.ServerApp.ip = "0.0.0.0"  # listen on all IPs
c.ServerApp.token = ""  # disable authentication
c.ServerApp.allow_origin = "*"  # allow access from anywhere
c.ServerApp.disable_check_xsrf = True  # allow cross-site requests
