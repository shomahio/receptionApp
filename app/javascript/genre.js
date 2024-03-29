
$(function(){
  // カテゴリーセレクトボックスのオプションを作成
  function appendOption(genre){
    let html = `<option value="${genre.id}" data-genre="${genre.id}">${genre.name}</option>`;
    return html;
  }
  // 子カテゴリーの表示作成
  function appendChidrenBox(insertHTML){
    let childSelectHtml = '';
    childSelectHtml = `<div class='listing-select-wrapper__added' id= 'children_wrapper2'>
                        <div class='listing-select-wrapper__box'>
                          <select class="input-default" id="child_genre" name="genre_id">
                            <option value="---" data-genre="---">---</option>
                            ${insertHTML}
                          <select>
                          <i class='fas fa-chevron-down listing-select-wrapper__box--arrow-down'></i>
                        </div>
                      </div>`;
    $('.listing-product-detail__genre').append(childSelectHtml);
  }
  
  // 親カテゴリー選択後のイベント
  $('#parent_genre').on('change', function(){
    var parentGenre = document.getElementById("parent_genre").value; //選択された親カテゴリーの名前を取得
    //debugger
    if (parentGenre != "---"){ //親カテゴリーが初期値でないことを確認
      $.ajax({
        url: 'get_genre_children',
        type: 'GET',
        data: { parent_name: parentGenre },
        dataType: 'json'
      })
      .done(function(children){
        $('#children_wrapper2').remove(); //親が変更された時、子以下を削除するする
        $('#size_wrapper2').remove();
        $('#brand_wrapper2').remove();
        var insertHTML = '';
        children.forEach(function(child){
          insertHTML += appendOption(child);
        });
        appendChidrenBox(insertHTML);
      })
      .fail(function(){
        alert('カテゴリー取得に失敗しました');
      })
    }else{
      $('#children_wrapper2').remove(); //親カテゴリーが初期値になった時、子以下を削除するする
      $('#size_wrapper2').remove();
      $('#brand_wrapper2').remove();
    }
  });
});
