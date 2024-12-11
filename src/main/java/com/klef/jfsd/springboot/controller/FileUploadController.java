package com.klef.jfsd.springboot.controller;

import java.security.cert.Certificate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.service.FileUploadService;

@Controller
public class FileUploadController {

    @Autowired
    private FileUploadService fileUploadService;

    @PostMapping("/uploadCertificate")
    public String uploadCertificate(@RequestParam("certificate") MultipartFile certificate, Model model) {
        // Call the service to upload the file and get the response message
        String responseMessage = fileUploadService.uploadCertificate(certificate);

        // Add the response message to the model
        model.addAttribute("message", responseMessage);

        // Return the JSP page
        return "Certification";
    }
 
    }

