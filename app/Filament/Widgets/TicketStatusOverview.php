<?php

namespace App\Filament\Widgets;

use App\Models\TicketStatus;
use Filament\Support\Colors\Color;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;

class TicketStatusOverview extends BaseWidget
{
    protected int | string | array $columnSpan = 'full';

    protected function getStats(): array
    {
        return TicketStatus::withCount('tickets')
            ->get()
            ->map(function (TicketStatus $status): Stat {
                return Stat::make($status->name, $status->tickets_count)
                    ->description(__('Tickets'))
                    ->color($status->color ? Color::hex($status->color) : 'gray');
            })
            ->toArray();
    }
}
