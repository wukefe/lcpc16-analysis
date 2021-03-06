function [answer, reference] = needle(penalty, max_rows, max_cols, input_seq_1, input_seq_2, reference, input_itemsets, blosum62)
  mc_t72 = 2;
  for i = (mc_t72 : max_cols);
    mc_t71 = 2;
    for j = (mc_t71 : max_rows);
      [mc_t47] = input_seq_2(j);
      [mc_t48] = input_seq_1(i);
      [mc_t43] = blosum62(mc_t47, mc_t48);
      reference(i, j) = mc_t43;
    end
  end
  mc_t75 = 2;
  for i = (mc_t75 : max_rows);
    mc_t73 = 1;
    [mc_t51] = minus(i, mc_t73);
    [mc_t49] = uminus(mc_t51);
    mc_t50 = penalty;
    [mc_t44] = mtimes(mc_t49, mc_t50);
    mc_t74 = 1;
    input_itemsets(i, mc_t74) = mc_t44;
  end
  mc_t78 = 2;
  for j = (mc_t78 : max_cols);
    mc_t76 = 1;
    [mc_t54] = minus(j, mc_t76);
    [mc_t52] = uminus(mc_t54);
    mc_t53 = penalty;
    [mc_t45] = mtimes(mc_t52, mc_t53);
    mc_t77 = 1;
    input_itemsets(mc_t77, j) = mc_t45;
  end
  mc_t84 = 2;
  for i = (mc_t84 : max_rows);
    mc_t83 = 2;
    for j = (mc_t83 : max_cols);
      mc_t79 = 1;
      [mc_t69] = minus(i, mc_t79);
      mc_t80 = 1;
      [mc_t70] = minus(j, mc_t80);
      [mc_t67] = input_itemsets(mc_t69, mc_t70);
      [mc_t68] = reference(i, j);
      [mc_t61] = plus(mc_t67, mc_t68);
      mc_t65 = i;
      mc_t81 = 1;
      [mc_t66] = minus(j, mc_t81);
      [mc_t63] = input_itemsets(mc_t65, mc_t66);
      mc_t64 = penalty;
      [mc_t62] = minus(mc_t63, mc_t64);
      [mc_t55] = max(mc_t61, mc_t62);
      mc_t82 = 1;
      [mc_t59] = minus(i, mc_t82);
      mc_t60 = j;
      [mc_t57] = input_itemsets(mc_t59, mc_t60);
      mc_t58 = penalty;
      [mc_t56] = minus(mc_t57, mc_t58);
      [mc_t46] = max(mc_t55, mc_t56);
      input_itemsets(i, j) = mc_t46;
...
...
...
    end
  end
  mc_t85 = 1;
  [answer] = plus(input_itemsets, mc_t85);
end
