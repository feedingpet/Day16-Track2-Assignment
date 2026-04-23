# Báo Cáo Kết Quả Benchmark Mô Hình trên CPU

Dựa trên kết quả chạy thực tế trên môi trường `ai-cpu-node`, mô hình cho thấy hiệu năng rất ấn tượng:
- **Thời gian huấn luyện (Training time):** Hoàn thành rất nhanh chỉ trong **27.70 giây**.
- **Chất lượng mô hình (AUC):** Đạt mức rất cao **0.9481** (Accuracy đạt 0.9995).
- **Tốc độ dự đoán (Inference speed):** Độ trễ rất thấp, chỉ mất **14.80 ms** cho 1 dòng dữ liệu và xử lý 1000 dòng chỉ trong **0.0256 giây**.

**Lý do sử dụng CPU thay vì GPU:**
Qua các chỉ số trên, có thể thấy với bài toán và kích thước dữ liệu hiện tại (thường là các mô hình ML truyền thống), CPU đã xử lý cực kỳ trơn tru và nhanh chóng. Việc chuyển sang dùng CPU thay cho GPU là một quyết định tối ưu vì nó giúp **tiết kiệm đáng kể chi phí** cloud và **tránh các rắc rối về giới hạn quota GPU** trên GCP. Đồng thời, do thời gian inference chỉ tính bằng mili-giây, việc nâng cấp lên GPU là hoàn toàn không cần thiết và gây lãng phí tài nguyên.
