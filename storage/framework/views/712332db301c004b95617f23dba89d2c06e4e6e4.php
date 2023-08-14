<?php $__env->startSection('content'); ?>

    <main class="h-full">
        
        <h2 class="text-3xl font-bold m-auto pt-5 ml-10"><a href="/blogs/">AI news</a></h2>

    <?php $__currentLoopData = $paginator; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <div class="bg-white shadow rounded  m-10 p-12 w-[90%] mb-20">
            <div class="inline-flex w-full mb-5">
                
                <div class="w-1/3"><?php echo e(substr($item->created_at, 0, 10)); ?></div>
                
                <div class="inline-flex w-1/3">
                    <?php $__currentLoopData = $symbols; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $symbol): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <?php echo $symbol; ?>

                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
            </div>
            
            <div class="inline-flex w-full mb-5">
                <?php if(!is_null($item->company)): ?>
                    <div><strong>Company</strong>: <?php echo e($item->company); ?></div>
                <?php endif; ?>
                <?php if(!is_null($item->for)): ?>
                    <div class = "ml-2"><strong>For</strong>: <?php echo e($item->for); ?></div>
                <?php endif; ?>
                <?php if(!is_null($item->country)): ?>
                        <div class = "ml-2"><strong>Country</strong>: <?php echo e($item->country); ?></div>
                <?php endif; ?>

            </div>
            
            <h7 class="font-bold mb-5"><a href="/blogs/<?php echo e($item->id); ?>"><?php echo $item->title; ?></a></h7>
            
            <p class="py-2 mt-5 "><?php echo $item->new; ?></p>
        </div>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

    </main>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('welcome', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Applications/XAMPP/xamppfiles/htdocs/lara/app/resources/views/default/blogs.blade.php ENDPATH**/ ?>