@extends('admin.layouts.app')
@section('title', 'Edit Coupon ' . $coupon->name)
@section('content')
<div class="card">
    <h1>Edit Coupon</h1>
    <div>
        <form action="{{ route('coupons.update', $coupon->id) }}" method="post">
            @csrf
            @method('put')
            <div class="input-group input-group-static mb-4">
                <label>Name</label>
                <input type="text" value="{{ old('name') ?? $coupon->name }}" name="name" class="form-control" style="text-transform: uppercase">

                @error('name')
                <span class="text-danger"> {{ $message }}</span>
                @enderror
            </div>
            <div class="input-group input-group-static mb-4">
                <label>Value</label>
                <input type="number" value="{{ old('value') ?? $coupon->value }}" name="value" class="form-control">

                @error('value')
                <span class="text-danger"> {{ $message }}</span>
                @enderror
            </div>

            <div class="input-group input-group-static mb-4">
                <label name="group" class="ms-0">Type</label>
                <select name="type" class="form-control">
                    <option> Select Type </option>
                    <option value="money" {{ (old('type') ?? $coupon->type) == 'money' ? 'selected' : '' }}> Money
                    </option>

                </select>
            </div>
            @error('type')
            <span class="text-danger"> {{ $message }}</span>
            @enderror

            <div class="input-group input-group-static mb-4">
                <label>Expery date</label>
                <input type="date" value="{{ old('expery_date') ?? $coupon->expery_date }}" name="expery_date" class="form-control">
                @error('expery_date')
                <span class="text-danger"> {{ $message }}</span>
                @enderror
            </div>

            <button type="submit" class="btn btn-submit btn-primary">Submit</button>
        </form>
    </div>
</div>

@endsection