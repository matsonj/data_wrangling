import plotly.express as px
from jinja2 import Template

import pandas as pd

df = pd.read_parquet("iris.parquet")
fig = px.scatter(
    df,
    x="SepalWidthCm",
    y="SepalLengthCm",
    color="Species",
    marginal_y="violin",
    marginal_x="box",
    trendline="ols",
    template="simple_white",
    title="Irises like you've never seen before",
).update_layout(
    {"paper_bgcolor": "rgba(255,255,255,.5)", "plot_bgcolor": "rgba(255,255,255,.5)"}
)

with open("index.html", "w") as output:
    with open("plotly_bg_image_template.html") as template:
        j2_template = Template(template.read())
        output.write(j2_template.render({"fig": fig.to_html(full_html=False)}))