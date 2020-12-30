# # # # # # rp = Proc.new { |s| s.reverse }
# # # # # # p ['Ruby', 'Java', 'Perl'].map(&rp)
# # # # # # op = rp.to_proc
# # # # # # p rp.equal?(op)
# # # # # split_proc = :split.to_proc
# # # # # split_proc = :split.to_proc
# # # # # p split_proc
# # # # # p split_proc.call('a-b-c-d e')
# # # # # p split_proc.call('a-b-c-d e', '-')

# # # # # 次の2つの出力結果が同じ理由
# # # # # p ['Ruby', 'Java', 'Perl'].map { |s| s.upcase }
# # # # # p ['Ruby', 'Java', 'Perl'].map(&:upcase)
# # # # # `&`でブロック引数を受け取る。
# # # # # シンボルの`:upcase`で裏側でto_procメソッドが動く。
# # # # # ブロックで渡された変数？にupcaseメソッドが適用＆返される
# # # # # upcaseが適用できる理由は、引数がないから（？）

# # # # def gp(array)
# # # #   count=0
# # # #   Proc.new do
# # # #     count += 10
# # # #     array << count
# # # #   end
# # # # end
# # # # values=[]
# # # # sp=gp(values)
# # # # p gp(values)
# # # # p values
# # # # sp.call
# # # # p values