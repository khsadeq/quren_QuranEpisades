<?php

namespace App\Http\Controllers;

use App\Models\summary;
use App\Http\Requests\StoresummaryRequest;
use App\Http\Requests\UpdatesummaryRequest;

class SummaryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoresummaryRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(summary $summary)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(summary $summary)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdatesummaryRequest $request, summary $summary)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(summary $summary)
    {
        //
    }
}
