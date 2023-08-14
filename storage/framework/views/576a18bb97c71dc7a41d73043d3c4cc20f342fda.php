<?php $__env->startSection('content'); ?>

    <main class="h-full">
        
        <h2 class="text-3xl font-bold m-auto p-10"><a href="/products/">AI products</a></h2>


        <div class="bg-white shadow rounded  m-10 p-12 w-[90%] min-h-56">
            <div class="inline-flex w-full">
                
                <div class="w-1/3">
                    <?php echo e(substr($product[0]["created_at"], 0, 10)); ?>

                </div>
                
                
                <?php if(!empty($product[0]["type_id"])): ?>
                    <div class="w-1/3"><strong>Type</strong>: <?php echo e($product[0]["type_id"]); ?></div>
                <?php endif; ?>
                <div class="inline-flex w-1/3">



                </div>
            </div>

            <div class="inline-flex my-5">
                <?php if(!empty($product[0]["company"])): ?>
                    <div><strong>company</strong>: <?php echo e($product[0]["company"]); ?></div>
                <?php endif; ?>
                <?php if(!empty($product[0]["for"])): ?>
                    <div class="ml-4"><strong>for</strong>: <?php echo e($product[0]["for"]); ?></div>
                <?php endif; ?>
            </div>
            <br>
            
            <h7 class="font-bold my-10 py-5 text-xl"><?php echo $product[0]["name"]; ?></h7>


            <?php if(!empty($product[0]["description"])): ?>
                <div class="my-4"><strong>Description</strong>: <?php echo e($product[0]["description"]); ?></div>
        <?php endif; ?>

            
            <?php if(!empty($product[0]["image"])): ?>
                <img class="my-4" src="/storage/<?php echo e($product[0]["image"]); ?>">
            <?php endif; ?>

            
            <?php if(!empty($product[0]["source"])): ?>
                <div class="my-4"><strong>Source</strong>: <?php echo e($product[0]["source"]); ?></div>
        <?php endif; ?>


    </main>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('welcome', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Applications/XAMPP/xamppfiles/htdocs/lara/app/resources/views/default/product.blade.php ENDPATH**/ ?>