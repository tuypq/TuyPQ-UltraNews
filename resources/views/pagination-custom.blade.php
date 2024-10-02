<div class="simple-pagination d-flex align-items-center">
  {{-- <p class="m-0 text">
      {{ trans('core/base::base.showing_records', [
          'from' => $paginator->firstItem(),
          'to' => $paginator->lastItem(),
          'total' => $paginator->total(),
      ]) }}
  </p> --}}

  @if ($paginator->hasPages())
  <ul class="inline-flex -space-x-px text-sm">
      {{-- Previous Page Link --}}
      <li @class(['page-item', 'disabled' => $paginator->onFirstPage()])>
          @if ($paginator->onFirstPage())
              <span class="flex items-center justify-center px-3 h-8 leading-tight text-gray-500 bg-white border border-gray-300 hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white" aria-disabled="true">
                  <x-core::icon name="ti ti-chevron-left" />
              </span>
          @else
              <a class="flex items-center justify-center px-3 h-8 leading-tight text-gray-500 bg-white border border-gray-300 hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white" href="{{ $paginator->previousPageUrl() }}" aria-label="Previous">
                  <x-core::icon name="ti ti-chevron-left" />
              </a>
          @endif
      </li>

      {{-- Pagination Elements --}}
      @foreach ($elements as $element)
          @if (is_string($element))
              {{-- "Three Dots" Separator --}}
              <li class="page-item disabled" aria-disabled="true"><span class="flex items-center justify-center px-3 h-8 leading-tight text-gray-500 bg-white border border-gray-300">{{ $element }}</span></li>
          @endif

          @if (is_array($element))
              @foreach ($element as $page => $url)
                  @if ($page == $paginator->currentPage())
                      <li class="page-item active" ><span aria-current="page" class="flex items-center justify-center px-3 h-8 leading-tight text-gray-500 bg-white border border-gray-300">{{ $page }}</span></li>
                  @else
                      <li class="page-item">
                          <a class="flex items-center justify-center px-3 h-8 leading-tight text-gray-500 bg-white border border-gray-300 hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white" href="{{ $url }}">{{ $page }}</a>
                      </li>
                  @endif
              @endforeach
          @endif
      @endforeach

      {{-- Next Page Link --}}
      <li @class(['page-item', 'disabled' => !$paginator->hasMorePages()])>
          @if ($paginator->hasMorePages())
              <a class="flex items-center justify-center px-3 h-8 leading-tight text-gray-500 bg-white border border-gray-300 hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white" href="{{ $paginator->nextPageUrl() }}" aria-label="Next">
                  <x-core::icon name="ti ti-chevron-right" />
              </a>
          @else
              <span class="flex items-center justify-center px-3 h-8 leading-tight text-gray-500 bg-white border border-gray-300" aria-disabled="true">
                  <x-core::icon name="ti ti-chevron-right" />
              </span>
          @endif
      </li>
  </ul>
  @endif
</div>
