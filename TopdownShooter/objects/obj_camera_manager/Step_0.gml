//kamera follows player smoothly and adjust to phone screen
var target_x, target_y;

if (instance_exists(obj_player)) {
    target_x = obj_player.x;
    target_y = obj_player.y;
}

// Ekran ve temel oran bilgilerini al
var display_ratio = display_get_width() / display_get_height();
var base_ratio = 16 / 9; // Oyunun orijinal oranı

// Kamerayı %25 daha yakınlaştırmak için ölçeklendirme faktörü
var zoom_factor = 1; // 1.0 = orijinal, 0.75 = %25 yakınlaştırma

// Kamera boyutlarını belirle
var cam_width, cam_height;
if (display_ratio > base_ratio) {
    cam_width = (640 * zoom_factor) * (display_ratio / base_ratio);
    cam_height = 360 * zoom_factor;
} else {
    cam_width = 640 * zoom_factor;
    cam_height = (360 * zoom_factor) / (base_ratio / display_ratio);
}

// Kamerayı yumuşak bir şekilde hareket ettir
var smooth_factor = 0.1;
var new_x = lerp(camera_get_view_x(view_camera[0]), target_x - cam_width / 2, smooth_factor);
var new_y = lerp(camera_get_view_y(view_camera[0]), target_y - cam_height / 2, smooth_factor);

// Kameranın odağının oda sınırlarını aşmasını engelle
new_x = clamp(new_x, 0, room_width - cam_width);
new_y = clamp(new_y, 0, room_height - cam_height);

// Kamera boyutlarını ve pozisyonunu uygula
camera_set_view_size(view_camera[0], cam_width, cam_height);
camera_set_view_pos(view_camera[0], new_x, new_y);


