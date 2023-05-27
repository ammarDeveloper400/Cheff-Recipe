from flask import Flask
from flask import request
from flask import redirect
from flask import render_template
import os
import sys
import time
import fitz
import requests
import json

ip = "https://cheff-strapi-6jbhc.ondigitalocean.app/"
# ip = "http://192.168.18.3:1700/"

app = Flask(__name__)
# @app.route('/')
# def hello_world():
#     return 'Hello Sammy!'

@app.route("/")
def hello():

	# fetch all categories from ip + "api/categories"
	categories = ip + "api/categories"
	r = requests.get(categories)
	json_resp = r.json()

	cats = json_resp['data']



	





	return render_template("index.html", cats=cats)

@app.route("/pdftotext", methods=["POST"])
def pdftotext():


	# loop through multiple files
	done = 0
	failed = 0

	input_sub_category = request.form.get("category_id")

	for file in request.files.getlist("file"):

		uploaded_file_name = file.filename

		# read files from request and save to disk
		# file = request.files["file"]
		# make timestamp
		timestamp = str(time.time())
		# make filename
		filename = timestamp + ".pdf"
		# save file to disk
		file.save(filename)
		text = ""
		with fitz.open(filename) as doc:
			for page in doc:
				text += page.get_text()
		# print(text)

		# We hope that you found the content to be helpful and informative If there
		# is anything else we can do to improve your visit, please don"t hesitate to
		# let us know. Thank you again for choosing to spend some of your time with us.
		# Thanks again for stopping by and happy cooking!
		# Description:
		# Calamari and chorizo skewers is a delicious and easy-to-make appetizer that combines the
		# tender and savory flavor of calamari with the spicy and smoky flavor of chorizo. This dish is
		# perfect for any occasion, whether it"s a casual get-together or a formal event. The skewers
		# are marinated in a mixture of olive oil, garlic, lemon juice, and herbs, which infuses the
		# calamari and chorizo with a tangy and savory flavor.


		# Ingredients:
		# 1 pound calamari, cleaned and cut into 1-inch pieces
		# 8 oz chorizo sausage, cut into 1-inch pieces
		# 1/4 cup olive oil
		# 2 cloves of garlic, minced
		# 2 tablespoons lemon juice
		# 1 teaspoon dried oregano
		# 1/2 teaspoon smoked paprika
		# Salt and pepper, to taste
		# Skewers (soaked in water for at least 30 minutes)
		# Lemon wedges and chopped parsley, for serving


		# Directions:
		# 1. In a large bowl, mix together the olive oil, garlic, lemon juice, oregano, smoked paprika, salt
		# and pepper.
		# 2. Add the calamari and chorizo to the bowl and toss to coat well with the marinade. Cover
		# the bowl and refrigerate for at least 1 hour, or up to 4 hours.
		# 3. Preheat grill or grill pan over medium-high heat.
		# 4. Thread the calamari and chorizo pieces onto the skewers, alternating between the two.
		# 5. Grill the skewers for 2-3 minutes per side or until the calamari is slightly charred and
		# cooked through and the chorizo is cooked through.
		# 6. Remove the skewers from the grill and let them rest for a few minutes.
		# 7. Serve the skewers with lemon wedges and chopped parsley, if desired.
		# 8. Enjoy your Calamari and Chorizo Skewers as an appetizer or as a main dish.


		# Cook time: 20-25 minutes
		# Servings:  4-6
		database_keys = ["description", "ingredients", "optional_ingredients", "directions", "cook_time", "servings", "nutritional_information", "note"]
		possible_keys = ["Description:", "Ingredients:", "Optional ingredients:", "Directions:", "Cook time:", "Servings:", "Nutritional Information (per serving):", "Note:"]
		possible_keys_values = ["", "", "", "", "", "", "", "", ""]

		
		for i in range(len(possible_keys)):
			if possible_keys[i] in text:
				vall = text.split(possible_keys[i])[1]
				for keyy in possible_keys:
					if(vall.find(keyy) != -1):
						vall = vall.split(keyy)[0]
						vall = vall.strip()
						break
				possible_keys_values[i] = vall
		
		

		# construct res from database_keys with possible_keys_values
		res = {}
		for i in range(len(database_keys)):
			val = possible_keys_values[i]

			# replace all • \n with -
			val = val.replace("• \n", "- ")

			for j in range(10):
				val = val.replace(str(j)+". \n", str(j)+". ")
				val = val.replace(str(j)+" \n", str(j)+". ")
			res[database_keys[i]] = val
		res['title'] = uploaded_file_name.split(".")[0]
		res['category'] = input_sub_category

		res = {
			"data":res
		}

		save_recipe = ip + "api/recipes"

		# convert to json
		res = json.dumps(res)

		# post data to save_recipe
		r = requests.post(save_recipe, data=res, headers={"Content-Type": "application/json"})
		print(r.status_code)
		# delet file
		os.remove(filename)
		json_resp = r.json()
		if(r.status_code!=200):
			failed = failed+1
			pass
		else:
			done = done+1
			pass

	return '<h1>Done: '+str(done)+'</h1><br /><h1>Failed: '+str(failed)+'</h1> <br> <a href="/">Go Back</a> <br><br> <a href="'+ ip + 'admin/content-manager/collectionType/api::recipe.recipe' + '">Go to Admin</a>'

	# return redirect(ip + "admin/content-manager/collectionType/api::recipe.recipe/"+str(json_resp["data"]["id"]), code=302)


