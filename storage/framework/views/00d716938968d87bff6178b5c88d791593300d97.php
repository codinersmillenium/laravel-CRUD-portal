<?php if (isset($component)) { $__componentOriginal2fc6fc46242716bcbf134cce645937967fada248 = $component; } ?>
<?php $component = $__env->getContainer()->make(App\View\Components\StudentLayout::class, []); ?>
<?php $component->withName('student-layout'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
     <?php $__env->slot('header', null, []); ?> 
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            <?php echo e(__('Lessons List')); ?>

        </h2>
     <?php $__env->endSlot(); ?>

    <div>
        <div class="max-w-7xl mx-auto py-10 sm:px-6 lg:px-8">
            Accessible only for students.
        </div>
    </div>
 <?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal2fc6fc46242716bcbf134cce645937967fada248)): ?>
<?php $component = $__componentOriginal2fc6fc46242716bcbf134cce645937967fada248; ?>
<?php unset($__componentOriginal2fc6fc46242716bcbf134cce645937967fada248); ?>
<?php endif; ?>
<?php /**PATH C:\Users\ASUS\Documents\Laravel-Jetstream-MultiAuth-Roles\resources\views/student/lessons/index.blade.php ENDPATH**/ ?>