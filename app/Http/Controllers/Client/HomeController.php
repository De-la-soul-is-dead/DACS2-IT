<?php

namespace App\Http\Controllers\Client;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Product;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */

    protected $product;
    public function __construct(Product $product)
    {
        $this->product = $product;
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $products =  $this->product->latest('id')->paginate(10);

        return view('client.home.index', compact('products'));
    }
    
    public function productCount($category_id)
    {
        $productCount = $this->product->where('category_id', $category_id)->count();

        return view('client.products.index', compact('productCount'));
    }
}