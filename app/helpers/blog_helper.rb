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
    return new_content.truncate(50)
  end
end
