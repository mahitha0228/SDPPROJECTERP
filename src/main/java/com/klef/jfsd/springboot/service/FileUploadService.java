package com.klef.jfsd.springboot.service;

import org.springframework.web.multipart.MultipartFile;

public interface FileUploadService {

	String uploadCertificate(MultipartFile file);

}
