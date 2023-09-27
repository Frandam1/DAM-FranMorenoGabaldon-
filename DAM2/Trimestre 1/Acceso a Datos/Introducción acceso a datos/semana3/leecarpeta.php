<?php

$path = 'vault/users/fran/';

if ($handle = opendir($path)){
    while (false !== ($entry = readdir($handle))){
        if($entry != "." && $entry != ".."){

            echo "<div class='item' filename='".$entry."'";

            if (!is_dir($path . '/' . $entry)){
                $parts = pathinfo($entry);
                $extension = isset($parts['extension']) ? $parts['extension'] : '';
                echo "filetype='".$extension."'";
            }

            echo ">";

            if (is_dir($path .'/'. $entry)){
                echo "<div class='iconfolder'>
                <img src='img/bootstrap-icons-1.11.0/folder.svg'>
                </div>";
            } else {
                echo "<div class='iconfile'>
                <img src='img/bootstrap-icons-1.11.0/filetype-".$extension.".svg'>
                </div>";
            }

            echo "<span class='documentname'>".$entry."</span></div>";
        }
    }
    closedir($handle);
}


?>