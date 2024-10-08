/******/ (() => { // webpackBootstrap
/*!**********************************************************************!*\
  !*** ./platform/plugins/post-collection/resources/assets/js/main.js ***!
  \**********************************************************************/
$(document).ready(function () {
  var loadRelationBoxes = function loadRelationBoxes() {
    var $wrapBody = $('.wrap-posts-relations');
    if ($wrapBody.length) {
      Botble.blockUI({
        target: $wrapBody,
        iconOnly: true,
        overlayColor: 'none'
      });
      $.ajax({
        url: $wrapBody.data('target'),
        type: 'GET',
        success: function success(res) {
          if (res.error) {
            Botble.showError(res.message);
          } else {
            $wrapBody.html(res.data);
            Botble.unblockUI($wrapBody);
          }
        },
        error: function error(data) {
          Botble.handleError(data);
          Botble.unblockUI($wrapBody);
        }
      });
    }
  };
  loadRelationBoxes();
  $(document).on('click', '.list-search-data .selectable-item', function (event) {
    event.preventDefault();
    var _self = $(event.currentTarget);
    var $input = _self.closest('.form-group').find('input[type=hidden]');
    var $isSingleInput = false;
    if ($input.data('type') === 'single') {
      $isSingleInput = true;
    }
    var existedValues = $input.val().split(',');
    $.each(existedValues, function (index, el) {
      existedValues[index] = parseInt(el);
    });
    if ($.inArray(_self.data('id'), existedValues) < 0) {
      if ($input.val()) {
        if ($isSingleInput) {
          $input.val(_self.data('id'));
        } else {
          $input.val($input.val() + ',' + _self.data('id'));
        }
      } else {
        $input.val(_self.data('id'));
      }
      var template = $(document).find('#selected_post_list_template').html();
      var postItem = template.replace(/__name__/gi, _self.data('name')).replace(/__id__/gi, _self.data('id')).replace(/__url__/gi, _self.data('url')).replace(/__image__/gi, _self.data('image')).replace(/__attributes__/gi, _self.find('a span').text());
      _self.closest('.form-group').find('.list-selected-posts').removeClass('hidden');
      if ($isSingleInput) {
        _self.closest('.form-group').find('.list-selected-posts table tbody').html(postItem);
      } else {
        _self.closest('.form-group').find('.list-selected-posts table tbody').append(postItem);
      }
    }
    _self.closest('.panel').addClass('hidden');
  });
  $(document).on('click', '.textbox-advancesearch', function (event) {
    var _self = $(event.currentTarget);
    var $formBody = _self.closest('.box-search-advance').find('.panel');
    $formBody.removeClass('hidden');
    $formBody.addClass('active');
    if ($formBody.find('.panel-body').length === 0) {
      Botble.blockUI({
        target: $formBody,
        iconOnly: true,
        overlayColor: 'none'
      });
      $.ajax({
        url: _self.data('target'),
        type: 'GET',
        success: function success(res) {
          if (res.error) {
            Botble.showError(res.message);
          } else {
            $formBody.html(res.data);
            Botble.unblockUI($formBody);
          }
        },
        error: function error(data) {
          Botble.handleError(data);
          Botble.unblockUI($formBody);
        }
      });
    }
  });
  $(document).on('keyup', '.textbox-advancesearch', function (event) {
    var _self = $(event.currentTarget);
    var $formBody = _self.closest('.box-search-advance').find('.panel');
    if (_self.val().length < 3) {
      $formBody.html('');
      return;
    }
    setTimeout(function () {
      Botble.blockUI({
        target: $formBody,
        iconOnly: true,
        overlayColor: 'none'
      });
      $.ajax({
        url: _self.data('target') + '?keyword=' + _self.val(),
        type: 'GET',
        success: function success(res) {
          if (res.error) {
            Botble.showError(res.message);
          } else {
            $formBody.html(res.data);
            Botble.unblockUI($formBody);
          }
        },
        error: function error(data) {
          Botble.handleError(data);
          Botble.unblockUI($formBody);
        }
      });
    }, 500);
  });
  $(document).on('click', '.btn-trigger-remove-selected-post', function (event) {
    event.preventDefault();
    var $input = $(event.currentTarget).closest('.form-group').find('input[type=hidden]');
    var existedValues = $input.val().split(',');
    $.each(existedValues, function (index, el) {
      el = el.trim();
      if (!_.isEmpty(el)) {
        existedValues[index] = parseInt(el);
      }
    });
    var index = existedValues.indexOf($(event.currentTarget).data('id'));
    if (index > -1) {
      existedValues.splice(index, 1);
    }
    $input.val(existedValues.join(','));
    if ($(event.currentTarget).closest('tbody').find('tr').length < 2) {
      $(event.currentTarget).closest('.list-selected-posts').addClass('hidden');
    }
    $(event.currentTarget).closest('tr').remove();
  });
  $(document).on('click', '.box-search-advance .page-link', function (event) {
    event.preventDefault();
    var _self = $(event.currentTarget);
    if (!_self.closest('.page-item').hasClass('disabled') && _self.prop('href')) {
      var $formBody = _self.closest('.box-search-advance').find('.panel');
      Botble.blockUI({
        target: $formBody,
        iconOnly: true,
        overlayColor: 'none'
      });
      $.ajax({
        url: _self.prop('href') + '&keyword=' + _self.val(),
        type: 'GET',
        success: function success(res) {
          if (res.error) {
            Botble.showError(res.message);
          } else {
            $formBody.html(res.data);
            Botble.unblockUI($formBody);
          }
        },
        error: function error(data) {
          Botble.handleError(data);
          Botble.unblockUI($formBody);
        }
      });
    }
  });
});
/******/ })()
;