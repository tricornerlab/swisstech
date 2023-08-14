<!DOCTYPE html>
<html lang="<?php echo e(str_replace('_', '-', app()->getLocale())); ?>">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>STG</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">

        <!-- Styles -->
        <style>
            /*! normalize.css v8.0.1 | MIT License | github.com/necolas/normalize.css */html{line-height:1.15;-webkit-text-size-adjust:100%}body{margin:0}a{background-color:transparent}[hidden]{display:none}html{font-family:system-ui,-apple-system,BlinkMacSystemFont,Segoe UI,Roboto,Helvetica Neue,Arial,Noto Sans,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol,Noto Color Emoji;line-height:1.5}*,:after,:before{box-sizing:border-box;border:0 solid #e2e8f0}a{color:inherit;text-decoration:inherit}svg,video{display:block;vertical-align:middle}video{max-width:100%;height:auto}.bg-white{--bg-opacity:1;background-color:#fff;background-color:rgba(255,255,255,var(--bg-opacity))}.bg-gray-100{--bg-opacity:1;background-color:#f7fafc;background-color:rgba(247,250,252,var(--bg-opacity))}.border-gray-200{--border-opacity:1;border-color:#edf2f7;border-color:rgba(237,242,247,var(--border-opacity))}.border-t{border-top-width:1px}.flex{display:flex}.grid{display:grid}.hidden{display:none}.items-center{align-items:center}.justify-center{justify-content:center}.font-semibold{font-weight:600}.h-5{height:1.25rem}.h-8{height:2rem}.h-16{height:4rem}.text-sm{font-size:.875rem}.text-lg{font-size:1.125rem}.leading-7{line-height:1.75rem}.mx-auto{margin-left:auto;margin-right:auto}.ml-1{margin-left:.25rem}.mt-2{margin-top:.5rem}.mr-2{margin-right:.5rem}.ml-2{margin-left:.5rem}.mt-4{margin-top:1rem}.ml-4{margin-left:1rem}.mt-8{margin-top:2rem}.ml-12{margin-left:3rem}.-mt-px{margin-top:-1px}.max-w-6xl{max-width:72rem}.min-h-screen{min-height:100vh}.overflow-hidden{overflow:hidden}.p-6{padding:1.5rem}.py-4{padding-top:1rem;padding-bottom:1rem}.px-6{padding-left:1.5rem;padding-right:1.5rem}.pt-8{padding-top:2rem}.fixed{position:fixed}.relative{position:relative}.top-0{top:0}.right-0{right:0}.shadow{box-shadow:0 1px 3px 0 rgba(0,0,0,.1),0 1px 2px 0 rgba(0,0,0,.06)}.text-center{text-align:center}.text-gray-200{--text-opacity:1;color:#edf2f7;color:rgba(237,242,247,var(--text-opacity))}.text-gray-300{--text-opacity:1;color:#e2e8f0;color:rgba(226,232,240,var(--text-opacity))}.text-gray-400{--text-opacity:1;color:#cbd5e0;color:rgba(203,213,224,var(--text-opacity))}.text-gray-500{--text-opacity:1;color:#a0aec0;color:rgba(160,174,192,var(--text-opacity))}.text-gray-600{--text-opacity:1;color:#718096;color:rgba(113,128,150,var(--text-opacity))}.text-gray-700{--text-opacity:1;color:#4a5568;color:rgba(74,85,104,var(--text-opacity))}.text-gray-900{--text-opacity:1;color:#1a202c;color:rgba(26,32,44,var(--text-opacity))}.underline{text-decoration:underline}.antialiased{-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale}.w-5{width:1.25rem}.w-8{width:2rem}.w-auto{width:auto}.grid-cols-1{grid-template-columns:repeat(1,minmax(0,1fr))}@media (min-width:640px){.sm\:rounded-lg{border-radius:.5rem}.sm\:block{display:block}.sm\:items-center{align-items:center}.sm\:justify-start{justify-content:flex-start}.sm\:justify-between{justify-content:space-between}.sm\:h-20{height:5rem}.sm\:ml-0{margin-left:0}.sm\:px-6{padding-left:1.5rem;padding-right:1.5rem}.sm\:pt-0{padding-top:0}.sm\:text-left{text-align:left}.sm\:text-right{text-align:right}}@media (min-width:768px){.md\:border-t-0{border-top-width:0}.md\:border-l{border-left-width:1px}.md\:grid-cols-2{grid-template-columns:repeat(2,minmax(0,1fr))}}@media (min-width:1024px){.lg\:px-8{padding-left:2rem;padding-right:2rem}}@media (prefers-color-scheme:dark){.dark\:bg-gray-800{--bg-opacity:1;background-color:#2d3748;background-color:rgba(45,55,72,var(--bg-opacity))}.dark\:bg-gray-900{--bg-opacity:1;background-color:#1a202c;background-color:rgba(26,32,44,var(--bg-opacity))}.dark\:border-gray-700{--border-opacity:1;border-color:#4a5568;border-color:rgba(74,85,104,var(--border-opacity))}.dark\:text-white{--text-opacity:1;color:#fff;color:rgba(255,255,255,var(--text-opacity))}.dark\:text-gray-400{--text-opacity:1;color:#cbd5e0;color:rgba(203,213,224,var(--text-opacity))}.dark\:text-gray-500{--tw-text-opacity:1;color:#6b7280;color:rgba(107,114,128,var(--tw-text-opacity))}}

        </style>

        <style>
            body {
                font-family: 'Nunito', sans-serif;
            }

            :root{
                --h-color1 :rgba(200, 255, 47, 0.694);
                --h-color2 :#b7f707;
                --h-color3 :#f707b7;
                --h-color4 :#07b7f7;
                --h-color5 :#f74707;
                --h-color6: #f3f707;
                --h-color7 :#b1c722;
                --h-color8 :rgba(159, 177, 111, 0.694);

            }

            body{margin: 0; padding: 0; box-sizing: border-box; width: 100%;}
            h{margin:auto!important;}
            .jumbotron,
            .search,
            .first-article__header,
            .header3{
                color: var(--h-color8);
            }
            .heading{margin:auto!important; }

            .event{max-width: 400px; margin:auto!important; line-height: 0.9em}

            .jumbotron,
            .menu,

            .banner__header,
            .banner-button,
            .header3{
                text-transform:uppercase;
            }

            /* HEADER         */



            /* TOP NAVIGATION */

            .nav-item{
                height: 40px;
                border-radius: 0 0 0 30px;
                /*border-bottom: 3px solid var(--h-color8);*/


                border-bottom: 3px solid rgba(234, 54, 250, 0.5);
                /*box-shadow: 0 0 0 0.1em rgba(234, 54, 250, 0.5) , 0 0 0 0.1em orange;*/
                display: inline;
                margin-bottom: 10px!important;}
            .nav-item a{
                ;}

            .search{
                width: 120px;
                border: 3px solid var(--h-color8);
            }
            /* BANNER 1 */
            .banner{
                background:url(img/wave1.jpeg);
            }
            .banner__header{
                color:var(--h-color4);
            }
            .banner-button{
                width: 150px;
                height: 50px;
                background-color: #07b7f7!important;
                box-shadow: inset 1px 2px 0 1px rgb(76, 211, 245), 1px 2px 0 1px rgb(34, 129, 184);
                border: transparent;
                cursor: pointer;
                border-radius: 50rem!important;


            }

            /* MAIN SECTION */

            .menu{
                background: var(--h-color5);
                width: max-content;
                color: #fff;}
            .miniature{width: 240px; height: 160px;}
            .subitem_1{
                background: var(--h-color4);}
            button:active{box-shadow:3px 0px 6px 5px rgba(34, 129, 184, 0.3);}

            .bg-rain{ box-shadow: inset 1px 2px 0 1px rgb(76, 245, 214), 1px 2px 0 1px rgb(34, 200, 206);
                background: linear-gradient(120deg, rgb(76, 245, 214) 0%, rgb(38, 189, 215) 100%)!important;}
                    /*linear-gradient(-60deg, rgb(34, 206, 155)5%, rgb(76, 245,214) 25%, rgb(67, 179, 205) 35%)!important;}*/

            /* BANNER 2 */
            .banner2{
                background:url(img/wave1.jpeg);
                height: 200px;
            }

            /* FOOTER */

            .footer-section{
                background: var(--h-color8);
                color: #fff;
            }
        </style>

        <script src="https://cdn.tailwindcss.com"></script>
    </head>

    <body class=" mx-auto">


    <div class="jumbotron jumbotron-fluid p-3 pl-3">
        <h1 class="text-3xl font-bold"><a href="/">SwissTech </a></h1>
        <p class=" mb-4 ">where AI is taking you
        </p>
    </div>

    <!-- NAV MENU -->
    <nav class="container-fluid">

        <div class=" inline-flex mb-4 ml-4">

            <a>
                <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="rgba(159, 177, 111, 0.694)" class="bi bi-list" viewBox="0 0 16 16">
                    <path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
                </svg>
            </a>
            <ul class="navbar col-md-7 p-0 pb-2">
                <?php $__currentLoopData = $menuitems; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <li class="nav-item w-10 m-3 p-1 pl-4 text-gray-600"><a class="nav-link" href="/<?php echo e($item['link']); ?>"><?php echo e($item['title']); ?></a></li>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </ul>
            
            <input class="search border rounded-full pl-2  w-40 h-7" type="search" value="search..">
        </div>


    </nav>

    <div class="relative flex items-top justify-center  sm:items-center py-4 sm:pt-0 " >
            <?php if(Route::has('login')): ?>
                <div class="hidden fixed top-0 right-12 py-4 sm:block ">
                    <?php if(auth()->guard()->check()): ?>
                        <a href="<?php echo e(url('/dashboard')); ?>" class="text-sm text-gray-700  underline">Dashboard</a>
                    <?php else: ?>
                        <a href="<?php echo e(route('login')); ?>" class="text-sm text-gray-700  underline">Log in</a>

                        <?php if(Route::has('register')): ?>
                            <a href="<?php echo e(route('register')); ?>" class="ml-4 text-sm text-gray-700 underline">Register</a>
                        <?php endif; ?>
                    <?php endif; ?>
                </div>
            <?php endif; ?>
    </div>



    <div class="bg-gray-50 min-h-screen min-w-[100%] ">
        <?php echo $__env->yieldContent('content'); ?>
    </div>





    

    <footer class="footer-section   text-sm pl-4 text-gray-500 h-72">



                <div class="flex justify-center p-4 sm:items-center sm:justify-between">
                    <div class="text-center text-sm text-gray-500 sm:text-left">
                        
                        <div class="flex items-center">
                            <svg fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24" stroke="currentColor" class="-mt-px w-5 h-5 text-gray-400">
                                <path d="M3 3h2l.4 2M7 13h10l4-8H5.4M7 13L5.4 5M7 13l-2.293 2.293c-.63.63-.184 1.707.707 1.707H17m0 0a2 2 0 100 4 2 2 0 000-4zm-8 2a2 2 0 11-4 0 2 2 0 014 0z"></path>
                            </svg>

                            <a href="#" class="ml-1 underline">
                                Shop
                            </a>

                            <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24" class="ml-4 -mt-px w-5 h-5 text-gray-400">
                                <path d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"></path>
                            </svg>

                            <a href="https://github.com/sponsors/globalstg" class="ml-1 underline">
                                Sponsor
                            </a>
                        </div>
                    </div>
                    
                    <div class="inline-flex">
                        
                        <a href="http://facebook.com/swisstechglobal" class="m-2">
                            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
                                <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z"/>
                            </svg>
                        </a>
                        
                        <a class="m-2" href="https://twitter.com/global_stg"><svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-twitter" viewBox="0 0 16 16">
                                <path d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z"/>
                            </svg>
                        </a>
                        
                        <a class="m-2" href="https://www.linkedin.com/company/swisstech-global/"><svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-linkedin" viewBox="0 0 16 16">
                            <path d="M0 1.146C0 .513.526 0 1.175 0h13.65C15.474 0 16 .513 16 1.146v13.708c0 .633-.526 1.146-1.175 1.146H1.175C.526 16 0 15.487 0 14.854V1.146zm4.943 12.248V6.169H2.542v7.225h2.401zm-1.2-8.212c.837 0 1.358-.554 1.358-1.248-.015-.709-.52-1.248-1.342-1.248-.822 0-1.359.54-1.359 1.248 0 .694.521 1.248 1.327 1.248h.016zm4.908 8.212V9.359c0-.216.016-.432.08-.586.173-.431.568-.878 1.232-.878.869 0 1.216.662 1.216 1.634v3.865h2.401V9.25c0-2.22-1.184-3.252-2.764-3.252-1.274 0-1.845.7-2.165 1.193v.025h-.016a5.54 5.54 0 0 1 .016-.025V6.169h-2.4c.03.678 0 7.225 0 7.225h2.4z"/>
                        </a></svg>

                    </div>
                </div>

        
        <div class=" col-span-4 h-36 mx-auto pt-10">
            <?php $__currentLoopData = $menuitems; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <a class="col-span-1 font-semibold p-4" href="/<?php echo e($item['link']); ?>"><?php echo e($item['title']); ?></a>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>


        <div>&copy; 2022 SwissTechGlobal SA</div>
</footer>





    </body>

</html>

<?php /**PATH /Applications/XAMPP/xamppfiles/htdocs/lara/app/resources/views/welcome.blade.php ENDPATH**/ ?>