<?php if(isset($_SESSION['id']))
{ ?><div class="brand clearfix">
    <a href="#" class="logo" style="font-size:16px; background-color:white;">UHS</a>
    <span class="menu-btn"><i class="fa fa-bars"></i></span>
    <ul class="ts-profile-nav">
        <li class="ts-account">
            <a href="#"><img src="img/avatar.png" class="ts-avatar hidden-side" alt=""> Profile <i
                    class="fa fa-angle-down hidden-side"></i></a>
            <ul>
                <li><a href="my-profile.php">Profile</a></li>
                <li><a href="logout.php">Signout</a></li>
            </ul>
        </li>
    </ul>
</div>

<?php
} else { ?>
<div class="brand clearfix">
    <a href="#" class="logo" style="font-size:16px; background-color:white;">University Housing System</a>
    <span class="menu-btn"><i class="fa fa-bars"></i></span>


</div>
<?php } ?>