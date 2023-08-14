<?php $__env->startSection('content'); ?>

    <main class="h-full">
        
        <h2 class="text-3xl font-bold m-auto p-10"><a href="/blogs/">AI news</a></h2>


        <div class="bg-white shadow rounded  m-10 p-12 w-[90%] min-h-56">
            <div class="inline-flex w-full">
                
                <div class="w-1/3">
                    <?php echo e(substr($blog[0]["created_at"], 0, 10)); ?>

                </div>
                
                <div class="inline-flex w-1/3">



                </div>
            </div>

            <div class="inline-flex my-5">
                <?php if(!empty($blog[0]["company"])): ?>
                    <div><strong>company</strong>: <?php echo e($blog[0]["company"]); ?></div>
                <?php endif; ?>
                <?php if(!empty($blog[0]["for"])): ?>
                    <div class="ml-4"><strong>for</strong>: <?php echo e($blog[0]["for"]); ?></div>
                <?php endif; ?>
            </div>
            <br>
            
            <h7 class="font-bold my-10 py-5 text-xl"><?php echo $blog[0]["title"]; ?></h7>
            
            <p class="py-2"><?php echo $blog[0]["new"]; ?></p>
            <?php if(!is_null($blog[0]['image'])): ?>
                <img src="/storage/<?php echo e($blog[0]['image']); ?>" class="my-5">
            <?php endif; ?>
            <p class="py-4"><strong>Source</strong>:  <?php echo $blog[0]["source"]; ?></p>
        </div>


    </main>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('welcome', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Applications/XAMPP/xamppfiles/htdocs/lara/app/resources/views/default/blog.blade.php ENDPATH**/ ?>