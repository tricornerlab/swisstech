<?php if($errors->any()): ?>
<p class="text-center font-semibold text-danger my-3">
    <?php if($errors->has('email')): ?>
        <?php echo e($errors->first('email')); ?>

    <?php else: ?>
        <?php echo e($errors->first('password')); ?>

    <?php endif; ?>
    </p>
<?php endif; ?>
<?php /**PATH /Applications/XAMPP/xamppfiles/htdocs/lara/app/vendor/laravel/nova/resources/views/auth/partials/errors.blade.php ENDPATH**/ ?>