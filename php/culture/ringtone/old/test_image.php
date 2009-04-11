<?php
//    $Date = "12 August 2006";
    Thaiza("T h a i Z a . C o m", $Date, "wizards/images/cabbage.jpg", "wizards/images/stork.jpg");

    function Thaiza($Header, $Birth_Date, $Image_1, $Image_2){
        $Now = date("j F Y");
        $Total_Day = datediff('d', $Now, $Birth_Date, false);
        if($Total_Day <= 0){
            $Week = 0;
            $Day = 0;
        }else{
            $Week = floor($Total_Day / 7);
            $Day = $Total_Day % 7;
        }
        $px_w = (40-$Week)*10;
        if($px_w >= 360) $px_w = 360;
        if($px_w <= 40) $px_w = 40;

        $String_2 = "$Week weeks and $Day days pregnant. Only $Total_Day days to go.";
        $image_1 = imagecreate(400, 100);
        $background_color = imagecolorallocate($image_1, 255, 255, 255);
        $image_2= imagecreatefromjpeg($Image_1);
        $image_3= imagecreatefromjpeg($Image_2);

        imagecopy($image_1, $image_2, 0, 20, 0, 0, 400, 60);
        imagecopymergegray($image_1, $image_3, $px_w, 20, 0, 0, 40, 60, 70);

        $Color = imagecolorallocate($image_1, 0, 0, 0);
        $px_1     = (imagesx($image_1) - 7.5 * strlen($Header)) / 2;
        $py_1     = (imagesy($image_1) - 90);
        imagestring($image_1, 3, $px_1, $py_1, $Header, $Color);
        $px_2     = (imagesx($image_1) - 7.5 * strlen($String_2)) / 2;
        $py_2     = (imagesy($image_1) - 20);
        imagestring($image_1, 3, $px_2, $py_2, $String_2, $Color);

        Header("Content-type: image/jpeg");
        imagepng($image_1);
        imagedestroy($image_1);
    }

    function datediff($interval, $datefrom, $dateto, $using_timestamps = false) {
        /*
        $interval can be:
        yyyy - Number of full years
        q - Number of full quarters
        m - Number of full months
        y - Difference between day numbers
          (eg 1st Jan 2004 is "1", the first day. 2nd Feb 2003 is "33". The datediff is "-32".)
        d - Number of full days
        w - Number of full weekdays
        ww - Number of full weeks
        h - Number of full hours
        n - Number of full minutes
        s - Number of full seconds (default)
        */
  
        if (!$using_timestamps) {
            $datefrom = strtotime($datefrom, 0);
            $dateto = strtotime($dateto, 0);
        }
        $difference = $dateto - $datefrom; // Difference in seconds
   
        switch($interval) {
            case 'yyyy': // Number of full years
                $years_difference = floor($difference / 31536000);
                if (mktime(date("H", $datefrom), date("i", $datefrom), date("s", $datefrom), date("n", $datefrom), date("j", $datefrom), date("Y", $datefrom)+$years_difference) > $dateto) {
                    $years_difference--;
                }
                if (mktime(date("H", $dateto), date("i", $dateto), date("s", $dateto), date("n", $dateto), date("j", $dateto), date("Y", $dateto)-($years_difference+1)) > $datefrom) {
                    $years_difference++;
                }
                $datediff = $years_difference;
                break;
            case "q": // Number of full quarters
                $quarters_difference = floor($difference / 8035200);
                while (mktime(date("H", $datefrom), date("i", $datefrom), date("s", $datefrom), date("n", $datefrom)+($quarters_difference*3), date("j", $dateto), date("Y", $datefrom)) < $dateto) {
                    $months_difference++;
                }
                $quarters_difference--;
                $datediff = $quarters_difference;
                break;
            case "m": // Number of full months
                $months_difference = floor($difference / 2678400);
                while (mktime(date("H", $datefrom), date("i", $datefrom), date("s", $datefrom), date("n", $datefrom)+($months_difference), date("j", $dateto), date("Y", $datefrom)) < $dateto) {
                    $months_difference++;
                }
                $months_difference--;
                $datediff = $months_difference;
                break;
            case 'y': // Difference between day numbers
                $datediff = date("z", $dateto) - date("z", $datefrom);
                break;
            case "d": // Number of full days
                $datediff = floor($difference / 86400);
                break;
            case "w": // Number of full weekdays
                $days_difference = floor($difference / 86400);
                $weeks_difference = floor($days_difference / 7); // Complete weeks
                $first_day = date("w", $datefrom);
                $days_remainder = floor($days_difference % 7);
                $odd_days = $first_day + $days_remainder; // Do we have a Saturday or Sunday in the remainder?
                if ($odd_days > 7) { // Sunday
                    $days_remainder--;
                }
                if ($odd_days > 6) { // Saturday
                    $days_remainder--;
                }
                $datediff = ($weeks_difference * 5) + $days_remainder;
                break;
            case "ww": // Number of full weeks
                $datediff = floor($difference / 604800);
                break;
            case "h": // Number of full hours
                $datediff = floor($difference / 3600);
                break;
            case "n": // Number of full minutes
                $datediff = floor($difference / 60);
                break;
            default: // Number of full seconds (default)
                $datediff = $difference;
                break;
        }    
        return $datediff;
    }
?>
