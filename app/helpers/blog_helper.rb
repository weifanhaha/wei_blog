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
    category_to_hide = ["test", "隱藏", "草稿"]
    v_blogs = Blog.all
    category_to_hide.each do |c|
      v_blogs = v_blogs.where.not("category LIKE ?", c)
    end

    v_blogs
  end

  def invalid_blogs
    category_to_hide = ["test", "隱藏", "草稿"]
    inv_blogs = []
    category_to_hide.each do |c|
      inv_blogs = inv_blogs + Blog.where("category LIKE ?", c)
    end

    inv_blogs
  end

end
