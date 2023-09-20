<?php

$path = 'vault/users/fran/';

if ($handle = opendir($path)){
    while (false !== ($entry = readdir($handle))){
        if($entry != "." && $entry != ".."){

            echo 
            "<div class='item' filetype='".explode(".",$entry)[1]."' filename='".$entry."'>";
            if (is_dir($path .'/'. $entry)){
                echo "<div class='iconfolder'>
                <img src = 'img/bootstrap-icons-1.11.0/folder.svg'>
                </div>";
            }else {

                
                echo "<div class='iconfile'>
                <img src = 'img/bootstrap-icons-1.11.0/filetype-".explode(".",$entry)[1].".svg'>
                </div>";
            }

            echo "
            <span class='documentname'>".$entry."</span>
            </div>";
        }
    }
    closedir($handle);
}

?>