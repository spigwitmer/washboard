{% extends "base.tpl" %}
{% load static %}

{% block head %}
<link rel="stylesheet" type="text/css" href="{% static "css/register.css" %}" />
{% endblock %}

{% block content %}
<div id="register-example">
    <h2><a href="http://www.tumblr.com/oauth/register" target="_blank">Register an application</a></h2>
    <p>Application name:</p>
    <input type="text" value="My Washboard" readonly />
    <p>Application website:</p>
    <input type="text" value="{{ BASE_URL }}" readonly />
    <p class="pagebreak"></p>
    <p>Default callback URL:</p>
    <input type="text" value="{{ BASE_URL }}callback" readonly />
</div>
<form method="post">
    <p>Because Washboard runs in your browser, we need you to register your own app using the information in the box to the right.</p>
    <p>After you've registered your app, enter your OAuth Consumer Key and Secret Key in the fields below.</p>
    <fieldset id="key_field">
        {% csrf_token %}
        {{ form.api_key }}
        {{ form.api_secret }}
    </fieldset>
    <p>Then choose a password for Washboard (don't reuse your Tumblr password) and you'll be good to go!</p>
    <fieldset id="password_field">
        {{ form.password }}
    </fieldset>
    <fieldset id="submit_field">
        <input type="submit" />
    </fieldset>
</fieldset></form>
{% endblock %}
