#????

def delete_duplicates(head)
  curr, cursor = head, head

  while cursor
    val = cursor.val
    cursor = cursor.next
    while cursor && cursor.val == val
      cursor = cursor.next
    end

    if cursor.nil?
      curr.val, curr.next = val, nil
      break
    end

    curr.val, curr = val, curr.next
  end

  head
end

p delete_duplicates([1,1,2,2,3])  #wrong
