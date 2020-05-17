package com.apress.pss.acl;

import org.springframework.core.io.ClassPathResource;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.util.FileCopyUtils;

import java.io.IOException;

public class DatabaseSeeder {

    public DatabaseSeeder(JdbcTemplate jdbcTemplate) throws IOException {
        String sql = new String(FileCopyUtils.copyToByteArray(new ClassPathResource("customCreateAclSchema.sql").getInputStream()));
        jdbcTemplate.execute(sql);
    }

}
