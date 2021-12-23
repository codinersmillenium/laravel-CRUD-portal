<?php if (isset($component)) { $__componentOriginalbe21424c595199d0a1615f0fe0e2ac096ce2973c = $component; } ?>
<?php $component = $__env->getContainer()->make(App\View\Components\TeacherLayout::class, []); ?>
<?php $component->withName('teacher-layout'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
     <?php $__env->slot('header', null, []); ?> 
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            <?php echo e(__('Courses List')); ?>

        </h2>
     <?php $__env->endSlot(); ?>

    <div>
        <div class="max-w-7xl mx-auto py-10 sm:px-6 lg:px-8">
            Accessible only for teachers.
        </div>
    </div>
 <?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalbe21424c595199d0a1615f0fe0e2ac096ce2973c)): ?>
<?php $component = $__componentOriginalbe21424c595199d0a1615f0fe0e2ac096ce2973c; ?>
<?php unset($__componentOriginalbe21424c595199d0a1615f0fe0e2ac096ce2973c); ?>
<?php endif; ?>
<?php /**PATH C:\Users\ASUS\Documents\Laravel-Jetstream-MultiAuth-Roles\resources\views/teacher/courses/index.blade.php ENDPATH**/ ?>