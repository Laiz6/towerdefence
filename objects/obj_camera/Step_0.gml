// Если цель существует
if instance_exists(target) {
    // Вычисляем целевую позицию
    var target_x = target.x - camera_get_view_width(view_camera[0]) / 2 + camera_offset_x;
    var target_y = target.y - camera_get_view_height(view_camera[0]) / 2 + camera_offset_y;
    
    // Применяем плавное движение
    var cam_x = camera_get_view_x(view_camera[0]);
    var cam_y = camera_get_view_y(view_camera[0]);
    
    cam_x = lerp(cam_x, target_x, camera_smooth);
    cam_y = lerp(cam_y, target_y, camera_smooth);
    
    // Ограничиваем камеру границами (если включено)
    if (camera_bounds) {
        cam_x = clamp(cam_x, camera_left, camera_right - camera_get_view_width(view_camera[0]));
        cam_y = clamp(cam_y, camera_top, camera_bottom - camera_get_view_height(view_camera[0]));
    }
    
    // Устанавливаем позицию камеры
    camera_set_view_pos(view_camera[0], cam_x, cam_y);
}