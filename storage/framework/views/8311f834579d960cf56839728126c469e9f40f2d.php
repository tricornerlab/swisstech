<?php $__env->startSection('content'); ?>

<!-- BANNER WIDGETS -->
<div class="banner w-full h-72">
    <div class="row pl-24">
        <div class="col-md-1"></div>
        <h2 class="banner__header col-md-4 p-3 text-3xl pt-16 font-bold"><a href="/widgets/">All smart widgets here</a></h2>
    </div>
    <div class="row pl-24">
        <div class="col-md-1"></div>
        
        <form action="/widgets/">
            <button class="col-md-1 btn-primary banner-button rounded-full mt-5 m-3 text-white"  value="go!" type="submit">Go!</button>
        </form>
    </div>
</div>




<!--NEWS SECTION -->
<div class="p-5 w-full ml-10 ">
    <div class="container mb-md-5 border-bottom ">

        <h1 class="first-article__header text-3xl font-bold pt-10"><a href="/blogs/">AI NEWS:</a></h1>

        <div class="">

            <div class="py-10 inline-flex w-full  mx-auto">

                <?php $__currentLoopData = $news; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $new): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                        <div class=" mr-3 min-w-20 bg-white rounded shadow p-2 h-46 pb-4">
                            <h6 class=" bg-gray-100 font-semibold h-14 p-1"> <?php echo $new['title']; ?></h6>
                            <div class="h-10 mb-2">company: <?php echo e($new['company']); ?></div>
                            <a href="/blogs/<?php echo e($new['id']); ?>" class="bg-blue-50 rounded w-[100%] p-2 m-[30%] ">Read more..</a>
                        </div>

                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
        </div>
    </div>
</div>
<hr>

<!-- IMAGE SECTION -->

<div class="row p-5 ml-10">
    <h3 class="header3  mb-md-4 py-10 text-3xl font-bold"><a href="/images/">Future awaits you here!</a></h3>

    <div class="inline-flex col-md-4 mx-[10%] ">
        <?php $__currentLoopData = $images; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $image): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <a class=" mb-md-4 p-2 " href="/blogs/<?php echo e($image->id); ?>">
            <img src="/storage/<?php echo e($image->image); ?>" class="shadow miniature " alt=""  >
        </a>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </div>
</div>

<hr>
<!-- EVENTS ROW -->

<div class="row pt-5 pl-10">
    <h3 class="header3 mb-md-4 py-10 text-3xl font-bold pl-5  "><a href="/events/">Events</a></h3>
    <?php $__currentLoopData = $events; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $event): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <div class="inline-flex shadow rounded-full h-40 p-4 bg-white w-60 ">
            <div class="flex flex-col  justify-evenly items-center w-full">
                <h4 class="bg-gray-50 font-bold text-xl rounded  w-full text-center"><a href="/events/<?php echo e($event->id); ?>" class=""><?php echo e($event->name); ?></a></h4>
                    <i class="max-h-20 text-xs leading-tight h-12 text-center">-<?php echo e($event->description); ?></i>
                    <p class="text-xs mx-auto"><?php echo e($event->country); ?></p>
                    <div class="text-xs mx-auto"><?php echo e($event->date); ?></div>
            </div>

        </div>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

</div>
<!-- BANNER 2 -->

<div class="row pb-0 ">
    <div class="banner2 h-72">
        <h3 class="banner__header text-3xl font-bold pl-10 pt-20 mt-10"><a href="#">Our products</a></h3>
    </div>
</div>

<?php $__env->stopSection(); ?>


<?php echo $__env->make('welcome', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Applications/XAMPP/xamppfiles/htdocs/lara/app/resources/views/default/default.blade.php ENDPATH**/ ?>