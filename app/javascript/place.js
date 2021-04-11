
$(function(){
  // カテゴリーセレクトボックスのオプションを作成
  function appendOption(place){
    let html = `<option value="${place.id}" data-place="${place.id}">${place.name}</option>`;
    return html;
  }
  // 子カテゴリーの表示作成
  function appendChidrenBox(insertHTML){
    let childSelectHtml = '';
    childSelectHtml = `<div class='listing-select-wrapper__added' id= 'children_wrapper'>
                        <div class='listing-select-wrapper__box'>
                          <select class="input-default" id="child_place" name="place_id">
                            <option value="---" data-place="---">---</option>
                            ${insertHTML}
                          <select>
                          <i class='fas fa-chevron-down listing-select-wrapper__box--arrow-down'></i>
                        </div>
                      </div>`;
    $('.listing-product-detail__place').append(childSelectHtml);
  }
  
  // 親カテゴリー選択後のイベント
  $('#parent_place').on('change', function(){
    var parentPlace = document.getElementById("parent_place").value; //選択された親カテゴリーの名前を取得
    if (parentPlace != "---"){ //親カテゴリーが初期値でないことを確認
      $.ajax({
        url: 'get_place_children',
        type: 'GET',
        data: { parent_name: parentPlace },
        dataType: 'json'
      })
      .done(function(children){
        $('#children_wrapper').remove(); //親が変更された時、子以下を削除するする
        $('#size_wrapper').remove();
        $('#brand_wrapper').remove();
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
      $('#children_wrapper').remove(); //親カテゴリーが初期値になった時、子以下を削除するする
      $('#size_wrapper').remove();
      $('#brand_wrapper').remove();
    }
  });
});
