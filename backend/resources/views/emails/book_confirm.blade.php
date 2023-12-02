<x-mail::message>
Booking Confirmed

Your travel package has been booked

<x-mail::button :url="'http://localhost:4200/home'">
Visit Agency
</x-mail::button>

Thanks,<br>
{{ config('app.name') }}
</x-mail::message>
