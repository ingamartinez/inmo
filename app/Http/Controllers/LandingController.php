<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use DB;
use PhpParser\Node\Expr\Cast\Double;

class LandingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('layouts.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $porciones = explode(",", $request->dataPolygons_hidden);
        $lat=$porciones[0];
        $lng=$porciones[1];
        $distance=(double) $porciones[2]/1000;

        $users = DB::select('
          SELECT
                *,
                (
                    6371 * acos(
                        cos(radians(?)) * cos(radians(lat)) * cos(radians(lng) - radians(?))+
                        sin(radians(?)) * sin(radians(lat))
                    )
                ) AS distance
            FROM
                markers
            HAVING
                distance < ?
            ORDER BY
                distance'
            , [$lat,$lng,$lat,$distance]);
//            , [37,-122,37,50]);

        dd($users,$lat,$lng,$distance);
//        dd($request->all());
    }

    public function getMarkers(Request $request)
    {
        $porciones = explode(",", $request->dataPolygons_hidden);
        $lat=$porciones[0];
        $lng=$porciones[1];
        $distance=(double) $porciones[2]/1000;

        $markers = DB::select('
          SELECT
                *,
                (
                    6371 * acos(
                        cos(radians(?)) * cos(radians(lat)) * cos(radians(lng) - radians(?))+
                        sin(radians(?)) * sin(radians(lat))
                    )
                ) AS distance
            FROM
                markers
            HAVING
                distance < ?
            ORDER BY
                distance'
            , [$lat,$lng,$lat,$distance]);
//            , [37,-122,37,50]);

//        dd($users,$lat,$lng,$distance);
//        dd($request->all());

        return $markers;
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
