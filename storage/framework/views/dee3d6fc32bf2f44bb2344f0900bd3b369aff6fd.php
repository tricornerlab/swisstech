<?php $__env->startSection('content'); ?>

    <div class="p-10 font-bold text-3xl"><a href="/events/">Events </a></div>
    <main class="bg-white min-h-screen m-10 rounded p-10">

        <h3 class="text-2xl">List of events:</h3>
        <div class="col-md-4 ">
        <?php $__currentLoopData = $paginator; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <div class="shadow w-[40%] h-30 bg-gray-50 p-4 my-2">
                <h5 class="font-bold"><?php echo e($item->name); ?></h5>
                <p>Where: <?php echo e($item->country); ?></p>
                <p>Date: <?php echo e($item->date); ?></p>
                <p>Industry:<?php echo e($item->description); ?></p>
                <p><?php echo e($item->url); ?></p>
                </div>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>


    </main>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('welcome', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Applications/XAMPP/xamppfiles/htdocs/lara/app/resources/views/default/events.blade.php ENDPATH**/ ?>