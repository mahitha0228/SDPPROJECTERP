package com.klef.jfsd.springboot.service;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class FileUploadServiceImpl implements FileUploadService {

    private static final String UPLOAD_DIR = "C:/uploads"; // Update with your actual directory path

    @Override
    public String uploadCertificate(MultipartFile file) {
        if (file == null || file.isEmpty()) {
            return "File is null or empty. Please select a valid file.";
        }

        try {
            // Ensure the upload directory exists
            File uploadDir = new File(UPLOAD_DIR);
            if (!uploadDir.exists()) {
                if (!uploadDir.mkdirs()) {
                    throw new IOException("Failed to create upload directory.");
                }
            }

            // Generate a unique file name
            String fileName = System.currentTimeMillis() + "_" + file.getOriginalFilename();
            Path filePath = Paths.get(UPLOAD_DIR, fileName);

            // Save the file to the directory
            Files.write(filePath, file.getBytes());

            // Return a success message with the file name
            return "File uploaded successfully: " + fileName;

        } catch (IOException e) {
            // Return error message in case of exception
            e.printStackTrace();
            return "Error uploading file: " + e.getMessage();
        }
    }
  
}
