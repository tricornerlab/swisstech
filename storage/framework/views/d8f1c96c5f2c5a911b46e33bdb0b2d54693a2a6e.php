<?php $__env->startSection('content'); ?>

    <div class="p-10 font-bold text-3xl">Classification of companies in the AI market </div>
    <main class="bg-white min-h-screen py-10">


    <table class="rounded shadow w-full m-4">

        <tr class="w-20 h-16 border ">
           <th class="w-16 h-16 border bg-[#e2ebcc] p-2"><?php echo e($types[1]); ?></th>
            <?php $__currentLoopData = $paginator1; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <td class="border px-2"><a href="/products/<?php echo e($product['id']); ?>"><?php echo e($product['name']); ?></a></td>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </tr>

        <tr class="w-20 h-16 border ">
            <th class="w-16 h-16 border bg-[#e2ebcc] p-2"><?php echo e($types[2]); ?></th>
            <?php $__currentLoopData = $paginator2; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <td class="border px-2"><a href="/products/<?php echo e($product['id']); ?>"><?php echo e($product['name']); ?></a></td>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </tr>

        <tr class="w-20 h-16 border ">
            <th class="w-16 h-16 border bg-[#e2ebcc] p-2"><?php echo e($types[3]); ?></th>
            <?php $__currentLoopData = $paginator3; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <td class="border px-2"><a href="/products/<?php echo e($product['id']); ?>"><?php echo e($product['name']); ?></a></td>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </tr>
        
        <tr class="w-20 h-16 border ">
            <th class="w-16 h-16 border bg-[#e2ebcc] p-2"><?php echo e($types[4]); ?></th>
            <?php $__currentLoopData = $paginator4; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <td class="border px-2"><a href="/products/<?php echo e($product['id']); ?>"><?php echo e($product['name']); ?></a></td>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </tr>
        
        <tr class="w-20 h-16 border ">
            <th class="w-16 h-16 border bg-[#e2ebcc] p-2"><?php echo e($types[5]); ?></th>
            <?php $__currentLoopData = $paginator5; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <td class="border px-2"><a href="/products/<?php echo e($product['id']); ?>"><?php echo e($product['name']); ?></a></td>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </tr>
        
        <tr class="w-20 h-16 border ">
            <th class="w-16 h-16 border bg-[#e2ebcc] p-2"><?php echo e($types[6]); ?></th>
            <?php $__currentLoopData = $paginator6; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <td class="border px-2"><a href="/products/<?php echo e($product['id']); ?>"><?php echo e($product['name']); ?></a></td>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </tr>
        
        <tr class="w-20 h-16 border ">
            <th class="w-16 h-16 border bg-[#e2ebcc] p-2"><?php echo e($types[7]); ?></th>
            <?php $__currentLoopData = $paginator7; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <td class="border px-2"><a href="/products/<?php echo e($product['id']); ?>"><?php echo e($product['name']); ?></a></td>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </tr>
        
        <tr class="w-20 h-16 border ">
            <th class="w-16 h-16 border bg-[#e2ebcc] p-2"><?php echo e($types[8]); ?></th>
            <?php $__currentLoopData = $paginator8; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <td class="border px-2"><a href="/products/<?php echo e($product['id']); ?>"><?php echo e($product['name']); ?></a></td>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </tr>
        
        <tr class="w-20 h-16 border ">
            <th class="w-16 h-16 border bg-[#e2ebcc] p-2"><?php echo e($types[9]); ?></th>
            <?php $__currentLoopData = $paginator9; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <td class="border px-2"><a href="/products/<?php echo e($product['id']); ?>"><?php echo e($product['name']); ?></a></td>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </tr>
        
        <tr class="w-20 h-16 border ">
            <th class="w-16 h-16 border bg-[#e2ebcc] p-2"><?php echo e($types[10]); ?></th>
            <?php $__currentLoopData = $paginator10; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <td class="border px-2"><a href="/products/<?php echo e($product['id']); ?>"><?php echo e($product['name']); ?></a></td>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </tr>
        
        <tr class="w-20 h-16 border ">
            <th class="w-16 h-16 border bg-[#e2ebcc] p-2"><?php echo e($types[11]); ?></th>
            <?php $__currentLoopData = $paginator11; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <td class="border px-2"><a href="/products/<?php echo e($product['id']); ?>"><?php echo e($product['name']); ?></a></td>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </tr>

    </table>
    </main>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('welcome', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Applications/XAMPP/xamppfiles/htdocs/lara/app/resources/views/default/types.blade.php ENDPATH**/ ?>