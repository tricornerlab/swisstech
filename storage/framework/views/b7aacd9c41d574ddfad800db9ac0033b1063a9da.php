<?php $__env->startSection('content'); ?>


    <main class="bg-white min-h-screen m-10 rounded p-10">

        <div class=" w-full bg-blue-50 ">
            <div class="px-[30%]">
                <h5 class="py-5 font-bold text-3xl w-full text-gray-600 ">Have some questions? </h5>
                <p class="text-gray-600 px-5 ">Av. Pictet-de-Rochemont 33BIS Geneva</p>
                <p class="text-gray-600 px-10">contact@swisstechglobal.com</p>
            </div>
            <section class="inline-flex w-full py-5 pb-20">
    
                <div class="h-100  w-1/2 pl-[10%] pt-20">
                    <img src="/storage/img/svg/picto-enveloppe.svg" class="w-[50%] ml-15 mt-15">
                </div>
    

                <form class="h-150 w-1/2" method="post" action="/contactus">
                    <?php echo csrf_field(); ?>

                        <p class="ml-5 text-green-500" <?php echo e($message ?? ''); ?></p>

                        <input class="rounded-3xl h-8 border w-[70%] m-3 text-sm text-gray-500 pl-2" name="name" alt="name" type="text" value="first name">
                        <input class="rounded-full h-8 border w-[70%] m-3 text-gray-500 pl-2" name="surname" alt="surname" type="text" value="last name">
                        <input class="rounded-full h-8 border w-[70%] m-3 text-gray-500 pl-2" name="email" alt="email" type="email" value="e-mail">
                        <input class="rounded-2xl h-32 border w-[70%] m-3 text-gray-500 pl-2 " name="message" alt="message" type="text" value="your message">
                        <input class="rounded-full h-8 bg-rain w-[70%] m-3 text-white" alt="submit" type="submit">
                </form>
            </section>
        </div>
    </main>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('welcome', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Applications/XAMPP/xamppfiles/htdocs/lara/app/resources/views/default/contact.blade.php ENDPATH**/ ?>