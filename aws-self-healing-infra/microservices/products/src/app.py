from flask import Flask, jsonify, request
from products import get_all_products, add_product

app = Flask(__name__)

@app.route('/')
def home():
    return "Products Microservice is running..."

@app.route('/products', methods=['GET'])
def list_products():
    products = get_all_products()
    return jsonify(products)

@app.route('/products', methods=['POST'])
def create_product():
    product_data = request.json
    add_product(product_data)
    return '', 201

if __name__ == '__main__':
    app.run(debug=True, port=5000)
