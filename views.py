from flask import Blueprint, render_template, redirect
import json

views = Blueprint('views', __name__)

@views.route("/")
def home():
    # This is how you redirect to the bookmarks with a empty url
    return redirect("bookmarks")


@views.route("/bookmarks")
def bookmarks():
    with open("./bookmarks_links.json", "r", encoding="UTF-8") as json_file:
        data = json.load(json_file)
    # sorted() returns a list, data.items() is source list, lambda is used for onthefly method
    sorted_data = sorted(data.items(), key=lambda x: x[0].lower())
    return render_template("bookmarks.html", sorted_dict=sorted_data)

@views.route("/docs")
def docs():
    with open("./docs_links.json", "r", encoding="UTF-8") as json_file:
        data = json.load(json_file)
    sorted_data = sorted(data.items(), key=lambda x: x[0].lower())
    return render_template("docs.html", sorted_dict=sorted_data)
