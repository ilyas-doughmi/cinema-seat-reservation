<?php

    require_once("Classes/connect.php");
    require_once("Classes/Movie.php");
    require_once("Classes/Booking.php");

    $book = new Booking;
    if(isset($_GET["movie"]) && isset($_GET["time"])){
        $movie_selected = $_GET["movie"];
        $time_selected = $_GET["time"];

        $movieObj = new Movie;
        $movie = $movieObj->getMovieData($movie_selected);
        $movie_reservation = $book->getMovieReservation($movie_selected,$time_selected);
        $booked_seats = array_column($movie_reservation,"seat_number");

    }else{
        header("location: index.php");
        exit;
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Select Your Seat</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        body { background-color: #0a0a0b; }
        .screen-curve {
            height: 70px;
            width: 100%;
            background: linear-gradient(to bottom, rgba(212, 175, 55, 0.3), transparent);
            border-top: 3px solid #D4AF37;
            border-radius: 50% 50% 0 0 / 100% 100% 0 0;
            filter: drop-shadow(0px 10px 20px rgba(212, 175, 55, 0.2));
        }
        .perspective-container { perspective: 1000px; }
        .seat-grid { transform: rotateX(20deg); }
    </style>
</head>
<body class="text-white min-h-screen font-sans">

    <header class="w-full py-8 text-center bg-gradient-to-b from-gray-900 to-transparent">
        <h1 class="text-4xl font-extrabold tracking-tighter text-[#D4AF37]">CINEMA ELITE</h1>
        <p class="text-gray-400 mt-2 text-sm uppercase tracking-widest">
            <?= $movie['movie_name'] ?> 
        </p>
    </header>

    <main class="max-w-4xl mx-auto px-6 pb-20">
        
        <form action="Includes/Booking.php" method="POST" class="flex flex-col items-center">
            
            <input type="hidden" name="time_selected" value="<?= $time_selected ?>">
            <input type="hidden" name="movie_selected" value="<?= $movie_selected ?>">

            <div class="w-full bg-gray-900/40 p-12 rounded-3xl border border-white/5 backdrop-blur-sm mb-12">
                
                <div class="w-full max-w-lg mx-auto mb-16 text-center">
                    <div class="screen-curve mb-4"></div>
                    <span class="text-[10px] uppercase tracking-[0.5em] text-gray-500">Screen</span>
                </div>

                <div class="perspective-container">
                    <div class="seat-grid grid grid-cols-5 gap-4 justify-items-center">
                        <?php for($i=1; $i<=20; $i++): 
                            // Using your PHP logic to check if booked
                            $is_booked = in_array($i, $booked_seats);
                        ?>
                            <label class="relative group <?= $is_booked ? 'pointer-events-none' : 'cursor-pointer' ?>">
                                <input type="radio" name="seat_number" value="<?= $i ?>" class="peer sr-only" <?= $is_booked ? 'disabled' : '' ?>>
                                
                                <div class="w-12 h-12 rounded-t-lg border-2 flex items-center justify-center text-sm font-bold transition-all duration-300
                                    <?= $is_booked 
                                        ? 'bg-gray-800 border-gray-800 text-gray-600' // Styling for booked
                                        : 'border-gray-700 bg-transparent text-gray-400 group-hover:border-[#D4AF37] group-hover:text-white peer-checked:bg-[#D4AF37] peer-checked:border-[#D4AF37] peer-checked:text-black peer-checked:shadow-[0_0_15px_rgba(212,175,55,0.4)]' // Styling for available/checked
                                    ?>">
                                    <?= $i ?>
                                </div>
                                <div class="w-full h-1.5 bg-gray-700/50 mt-0.5 rounded-full <?= $is_booked ? 'bg-gray-800' : '' ?>"></div>
                            </label>
                        <?php endfor; ?>
                    </div>
                </div>

                <div class="flex justify-center gap-8 mt-16 text-xs uppercase tracking-widest text-gray-400 border-t border-white/5 pt-8">
                    <div class="flex items-center gap-2"><span class="w-3 h-3 rounded-sm bg-gray-800"></span> Taken</div>
                    <div class="flex items-center gap-2"><span class="w-3 h-3 rounded-sm border border-gray-700"></span> Available</div>
                    <div class="flex items-center gap-2"><span class="w-3 h-3 rounded-sm bg-[#D4AF37]"></span> Selected</div>
                </div>
            </div>

            <div class="w-full max-w-md space-y-8">
                <div class="relative">
                    <label class="block text-xs font-bold text-[#D4AF37] tracking-widest uppercase mb-4">YOUR NAME</label>
                    <input type="text" name="user_name" required 
                           class="w-full bg-white/5 border border-white/10 rounded-xl px-5 py-4 text-white focus:outline-none focus:border-[#D4AF37] focus:ring-1 focus:ring-[#D4AF37] transition placeholder-gray-600"
                           placeholder="Enter your full name">
                </div>

                <button type="submit" name="confirm_booking" 
                        class="w-full bg-[#D4AF37] text-black font-black py-5 rounded-xl hover:bg-[#b8962f] hover:scale-[1.02] active:scale-[0.98] transition-all duration-200 uppercase tracking-widest shadow-xl shadow-[#D4AF37]/10">
                    Confirm & Pay
                </button>
            </div>
        </form>
    </main>

</body>
</html>