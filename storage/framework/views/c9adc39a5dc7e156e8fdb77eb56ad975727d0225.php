<?php if (isset($component)) { $__componentOriginalbacdc7ee2ae68d90ee6340a54a5e36f99d0a3040 = $component; } ?>
<?php $component = $__env->getContainer()->make(App\View\Components\AdminLayout::class, []); ?>
<?php $component->withName('admin-layout'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
     <?php $__env->slot('header', null, []); ?> 
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            <?php echo e(__('Student List')); ?>

        </h2>
     <?php $__env->endSlot(); ?>
    <div>
      <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'jetstream::components.button','data' => ['class' => 'ml-4 mt-4']]); ?>
<?php $component->withName('jet-button'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes(['class' => 'ml-4 mt-4']); ?>
        <a href="/student/input_data"><?php echo e(__('Input Data')); ?></a>
                 <?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>
  <table width="100%" class="mt-4 border-separate border">
  <thead>
    <tr>
      <th class="border">No</th>
      <th class="border">Nama</th>
      <th class="border">Tanggal Lahir</th>
      <th class="border">Alamat</th>
      <th class="border">Cabang</th>
      <th class="border">Level</th>
    </tr>
  </thead>
  <tbody>
    <?php 
    $no=1; ?>
      <?php $__currentLoopData = $student; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $row): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <tr>
      <td class="border"><?php echo e($no++); ?></td>
      <td class="border"><?php echo e($row->nama); ?></td>
      <td class="border"><?php echo e($row->tanggal_lahir); ?></td>
      <td class="border"><?php echo e($row->alamat); ?></td>
      <td class="border"><?php echo e($row->cabang); ?></td>
      <td class="border"><?php echo e($row->level); ?></td>
      <td class="border">
        <a href="/student/update/<?php echo e($row->id); ?>">Update</a>
        |
        <a href="/student/delete/<?php echo e($row->id); ?>">Delete</a>
      </td>
    </tr>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
  </tbody>
</table>
        <div class="max-w-7xl mx-auto py-10 sm:px-6 lg:px-8">
            Accessible only for administrators.
        </div>
    </div>
 <?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalbacdc7ee2ae68d90ee6340a54a5e36f99d0a3040)): ?>
<?php $component = $__componentOriginalbacdc7ee2ae68d90ee6340a54a5e36f99d0a3040; ?>
<?php unset($__componentOriginalbacdc7ee2ae68d90ee6340a54a5e36f99d0a3040); ?>
<?php endif; ?>
<?php /**PATH E:\xamppNew\htdocs\portal\resources\views/admin/student/student.blade.php ENDPATH**/ ?>