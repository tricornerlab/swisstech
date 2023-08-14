<?php $__env->startSection('content'); ?>

    <div class="p-10 font-bold text-3xl"><a href="/events/">Events </a> > <?php echo e($event[0]['name']); ?>

    </div>
    <main class="bg-white min-h-screen m-10 rounded p-10">

        <div>
            <p class="font-bold"><?php echo e($event[0]['name']); ?></p>
            <p>Location: <?php echo e($event[0]['country']); ?></p>
            <p>About: <?php echo e($event[0]['description']); ?></p>
            <p>When: <?php echo e($event[0]['date']); ?></p>
            <p><?php echo e($event[0]['url']); ?></p>
        </div>


    </main>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('welcome', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Applications/XAMPP/xamppfiles/htdocs/lara/app/resources/views/default/event.blade.php ENDPATH**/ ?>