insert into process values (
    :snapshot_id,
    :pid,
    :cmd,
    :argv,
    :comm,
    :minor_faults,
    :major_faults,
    :user_time,
    :system_time,
    :start_time,
    :num_fragments,
    :pss,
    :heap,
    :stack,
    :ro_shared,
    :ro_shared_file,
    :ro_private,
    :ro_private_file,
    :rw_shared,
    :rw_shared_file,
    :rw_private,
    :rw_private_file,
    :rx_shared,
    :rx_shared_file,
    :rx_private,
    :rx_private_file,
    :rwx_shared,
    :rwx_shared_file,
    :rwx_private,
    :rwx_private_file,
    :shared_clean,
    :shared_dirty,
    :private_clean,
    :private_dirty,
    :referenced,
    :anonymous
);