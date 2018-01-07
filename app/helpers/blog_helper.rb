module BlogHelper
  # def raw_index_content(content)
  #   new_content = ""
  #   count = 0
  #   while content.index">" and count < 5
  #     start = (content.index">").to_i + 1
  #     # start = content.index">"
  #     p_end = content[start..-1].index"<"
  #     new_content += content[start..p_end-1]
  #     content = content[p_end..-1]
  #     count += 1
  #     p "count:" count
  #   end
  #   p "count:" count
  #   return new_content.truncate(50)
  # end
end
