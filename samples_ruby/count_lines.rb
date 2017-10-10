def count_lines(paragraph)
  return paragraph.to_s.lines.count
end


puts count_lines("This is \n fun \n to do")
