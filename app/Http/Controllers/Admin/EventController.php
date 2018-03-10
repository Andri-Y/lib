<?php
namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use App\Event;
use MaddHatter\LaravelFullcalendar\Facades\Calendar;
class EventController extends Controller implements ResourceController
{
    public function index()
    {
        $events = [];
        $data = Event::all();
        if($data->count()) {
            foreach ($data as $key => $value) {
                $events[] = Calendar::event(
                    $value->title,
                    true,
                    new \DateTime($value->start_date),
                    new \DateTime($value->end_date),
                    null,
                    // Add color and link on event
                    [
                        'color' => '#ff0000',
                        'url' => $value->url,
                    ]
                );
            }
        }
        $calendar = Calendar::addEvents($events);
        return view('admin.events', compact('calendar'));
    }

    public function store()
    {
        // TODO: Implement store() method.
    }

    public function create()
    {
        // TODO: Implement create() method.
    }

    public function destroy()
    {
        // TODO: Implement destroy() method.
    }

    public function update($slug)
    {
        // TODO: Implement update() method.
    }

    public function show($slug)
    {
        // TODO: Implement show() method.
    }

    public function edit($slug)
    {
        // TODO: Implement edit() method.
    }
}
