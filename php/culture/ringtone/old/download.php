<?php
$filename = "song/13/" . $fname . ".mp3";
$fp = fopen($filename, "rb");
$contents = fread($fp, filesize($filename));
fclose($fp);
header('Content-Type: audio/mp3');
header('Content-Disposition: attachment; filename="' . $fname . '.mp3"');
print $contents;
exit();
?>
