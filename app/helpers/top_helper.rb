module TopHelper
  def quote_collections()
    message = [
      "写真を撮ること、それは、同じ照準線上に頭、目、心を合わせること。つまり、生き方だ。
      <small>(アンリ・カルティエ＝ブレッソン)<small>
      ",
      "撮ればいいんです。何が良くて、何が悪いのか、撮ってみなくちゃ分からない。
      <small>(金村修)<small>
      ",
      "カメラの最も大切な要素はその12インチ後ろにある。
      <small>（アンセル・アダムス）</small>
      ",
      "偉大な写真は被写界深度（depth of field）ではなく、感情の深さ（depth of feeling）に纏わるものだ。
      <small>（ピーター・アダムス）</small>
      ",
      "時にはシンプルな写真を撮るのが最も難しいことがある。
      <small>（ニール・ライファー）</small>
      ",
      "ファインダーから見慣れた光景を目にしたら、私は何か変化をつけるだろう。
      <small>（ゲイリー・ウィノグランド）</small>
      ",
      "真の写真とは説明を必要とせず、言葉で語ることができるものでもない。
      <small>（アンセル・アダムス）</small>
      ",
      "To take photographs means to recognize — simultaneously and within a fraction of a second — both the fact itself and the rigorous organization of visually perceived forms that give it meaning. It is putting one’s head, one’s eye and one’s heart on the same axis.
      <small>(Henri Cartier Bresson)</small>"
    ].sample
    return message.html_safe
  end
end
