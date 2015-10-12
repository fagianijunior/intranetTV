$(function () {
  var $tbPieces = $('#pieces'), $tbToEmployer = $('#piecesToEmployer'), $button = $('#btnSalvar');
  canGenerate();
  $tbPieces.bootstrapTable({
    }).on('check.bs.table', function (e, row) {
      $tbToEmployer.bootstrapTable('insertRow', {index: row.id, row: row});
      canGenerate();

    }).on('uncheck.bs.table', function (e, row) {
      $tbToEmployer.bootstrapTable('removeByUniqueId', row.id);
      canGenerate();
    });

    $tbToEmployer.bootstrapTable({
    }).on('uncheck.bs.table', function (e, row) {
      $tbToEmployer.bootstrapTable('removeByUniqueId', row.id);
      $tbPieces.bootstrapTable('uncheckBy', {field:'id', values:[row.id]});
      canGenerate();

    });

  function canGenerate() {
    if ($tbToEmployer.bootstrapTable('getData').length > 0) {
      $button.prop( "disabled", false );
    } else {
      $button.prop( "disabled", true );
    }
  }
  
});