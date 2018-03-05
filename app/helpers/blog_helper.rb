module BlogHelper
  def raw_index_content(content)
    new_content = ""
    count = 0
    while content.index">" and count < 10
      start = (content.index">").to_i + 1
      p_end = content[start..-1].index"<"
      if !p_end
        return new_content
      end
      p_end = p_end + start
      new_content += content[start..p_end-1]
      content = content[p_end..-1]
      count += 1
    end
    new_content.truncate(50)
  end

  def valid_blogs
    v_blogs = Blog.all.to_a
    v_blogs.each do |blog|
      p 'loop'
      if blog.category.include?"test" or blog.category.include?"隱藏" or blog.category.include?"草稿"
        v_blogs.delete(blog)
      end
    end
    v_blogs
  end

  def invalid_blogs
    inv_blogs = []
    Blog.all.each do |blog|
      p 'loop'
      if blog.category.include?"test" or blog.category.include?"隱藏" or blog.category.include?"草稿"
        inv_blogs.append(blog)
      end
    end
    inv_blogs
  end

end
