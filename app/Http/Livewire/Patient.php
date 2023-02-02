<?php

namespace App\Http\Livewire;
use App\polyclinics;
use App\doctors;
use Livewire\Component;

class Patient extends Component
{
    public $selectedClass = null;
    public $selectedSection = null;
    public $doctors = null;

    public function render()
    {
        return view('livewire.assignment', [
            'polyclinics' => polyclinics::all(),
        ]);
    }

    public function updatedSelectedClass($polyclinic_id)
    {
        $this->doctors = doctors::where('polyclinic_id', $polyclinic_id)->get();
    }
}
