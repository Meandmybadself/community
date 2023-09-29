"""
Applet: Reoccurring Countdown
Summary: See the time until a reoccuring event occurs
Description: See the time until a reoccuring event occurs
Author: Jeffery Bennett

v1.0 - Initial Tidbyt release
"""

load("math.star", "math")
load("render.star", "render")
load("time.star", "time")
load("schema.star", "schema")

def main(config):
    timezone = config.get("$tz", "America/Chicago")  # Utilize special timezone variable
    return render.Root(
        child = render.Column(
            children=[
                render.Marquee(
                    child = render.Text(
                        text = config.get("event_hour", "00:00"),
                        color = "#fff",
                        font = render.Font("sans-serif", 12),
                    ),
                    speed = 0.5,
                ),
                 render.Text(
                    text = config.get("event", "Event"),
                    color = "#fff",
                    font = render.Font("sans-serif", 12),
                ),
            ],
        )
   )


def get_schema():
    return schema.Schema(
        version = "1",
        fields = [
            schema.Text(
                id = "event",
                name = "Event",
                desc = "The event text to display.",
                icon = "gear",
            ),
            schema.Text(
                id = "event_hour",
                name = "Event Hour",
                desc = "The hour of the event.",
                icon = "gear",
            ),
            schema.Text(
                id = "event_hour",
                name = "Event Hour",
                desc = "The hour of the event.",
                icon = "gear",
            ),
        ],
    )
