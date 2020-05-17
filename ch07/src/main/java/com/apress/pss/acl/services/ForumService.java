package com.apress.pss.acl.services;

import com.apress.pss.acl.domain.Post;

import java.util.Collection;

public interface ForumService {

    void createPost(Post post);

    Collection<Post> getPosts();

    void deletePost(Post post);

}
