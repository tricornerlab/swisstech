<?php $__env->startSection('content'); ?>

    <div class="p-10 font-bold text-3xl"><a href="/images/">Future awaits you here!</a></div>
    <main class="bg-white min-h-screen m-10 rounded p-10">

        List:
        <?php $__currentLoopData = $paginator; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <div class="shadow">
                <h5><?php echo e($item->name); ?></h5>
                link: <?php echo e($item->link); ?>

                Related to:<?php echo e($item->blog); ?>

                Date:<?php echo e($item->created_at); ?>


            </div>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>





    </main>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('welcome', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Applications/XAMPP/xamppfiles/htdocs/lara/app/resources/views/default/images.blade.php ENDPATH**/ ?>