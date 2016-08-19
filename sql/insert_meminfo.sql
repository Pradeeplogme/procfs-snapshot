insert into memory_stats values (
    null,
    :snapshot_id,
    :total,
    :free,
    :mem_available,
    :buffers,
    :cached,
    :swap_cached,
    :active,
    :inactive,
    :active_anon,
    :inactive_anon,
    :active_file,
    :inactive_file,
    :unevictable,
    :mlocked,
    :high_total,
    :high_free,
    :low_total,
    :low_free,
    :swap_total,
    :swap_free,
    :dirty,
    :writeback,
    :anon_pages,
    :mapped,
    :shmem,
    :slab,
    :slab_reclaimable,
    :slab_unreclaimable,
    :kernel_stack,
    :page_tables,
    :nfs_unstable,
    :bounce,
    :writeback_tmp,
    :commit_limit,
    :committed_as,
    :vmalloc_total,
    :vmalloc_used,
    :vmalloc_chunk,
    :hardware_corrupted,
    :anon_huge_pages,
    :cma_total,
    :cma_free,
    :huge_pages_total,
    :huge_pages_free,
    :huge_pages_rsvd,
    :huge_pages_surp,
    :huge_page_size,
    :direct_map_4k,
    :direct_map_2m
);