int countVietnameseCharacters(String input) {
  // Tạo một danh sách chứa các chữ cái Tiếng Việt có thể tạo thành
  List<String> vietnameseCharacters = ['aw', 'aa', 'dd', 'ee', 'oo', 'ow', 'w'];

  // Đếm số lượng chữ cái Tiếng Việt có thể tạo thành
  int count = 0;
  // Tạo một danh sách để lưu trữ các chữ cái Tiếng Việt đã tìm thấy
  List<String> foundCharacters = [];

  // Duyệt qua từng cặp ký tự trong chuỗi nhập vào
  for (int i = 0; i < input.length - 1; i++) {
    // Kiểm tra xem cặp ký tự hiện tại và ký tự kế tiếp có thể tạo thành một chữ cái Tiếng Việt hay không
    if (vietnameseCharacters.contains(input.substring(i, i + 2))) {
      // Nếu tìm thấy, tăng biến đếm lên
      count++;
      // Thêm chữ cái Tiếng Việt vào danh sách các chữ cái đã tìm thấy
      foundCharacters.add(input.substring(i, i + 2));
      i++; // Bỏ qua ký tự kế tiếp vì đã được xử lý trong cặp ký tự hiện tại
    }
  }

  // Kiểm tra ký tự cuối cùng nếu có
  if (vietnameseCharacters.contains("w")) {
    count++;
    foundCharacters.add("w");
  }

  print('Output: $count ${foundCharacters}');

  return count;
}

void main() {
  countVietnameseCharacters("hfdawhwhcoomdd");
}
