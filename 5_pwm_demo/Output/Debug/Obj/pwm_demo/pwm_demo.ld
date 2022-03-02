MEMORY
{
  UNPLACED_SECTIONS (wx) : ORIGIN = 0x100000000, LENGTH = 0
  FLASH1 (rx) : ORIGIN = 0x08000000, LENGTH = 0x00020000
  RAM1 (wx) : ORIGIN = 0x20000000, LENGTH = 0x00008000
}

SECTIONS
{
  __FLASH1_segment_start__ = 0x08000000;
  __FLASH1_segment_end__ = 0x08020000;
  __FLASH1_segment_size__ = 0x00020000;
  __RAM1_segment_start__ = 0x20000000;
  __RAM1_segment_end__ = 0x20008000;
  __RAM1_segment_size__ = 0x00008000;

  __HEAPSIZE__ = 1024;
  __STACKSIZE__ = 1024;

  __vectors_load_start__ = __FLASH1_segment_start__;
  .vectors __FLASH1_segment_start__ : AT(__FLASH1_segment_start__)
  {
    __vectors_start__ = .;
    *(.vectors .vectors.*)
  }
  __vectors_end__ = __vectors_start__ + SIZEOF(.vectors);
  __vectors_size__ = SIZEOF(.vectors);
  __vectors_load_end__ = __vectors_end__;

  . = ASSERT(__vectors_start__ == __vectors_end__ || (__vectors_end__ - __FLASH1_segment_start__) <= __FLASH1_segment_size__ , "error: .vectors is too large to fit in FLASH1 memory segment");

  __init_load_start__ = ALIGN(__vectors_end__ , 4);
  .init ALIGN(__vectors_end__ , 4) : AT(ALIGN(__vectors_end__ , 4))
  {
    __init_start__ = .;
    *(.init .init.*)
  }
  __init_end__ = __init_start__ + SIZEOF(.init);
  __init_size__ = SIZEOF(.init);
  __init_load_end__ = __init_end__;

  . = ASSERT(__init_start__ == __init_end__ || (__init_end__ - __FLASH1_segment_start__) <= __FLASH1_segment_size__ , "error: .init is too large to fit in FLASH1 memory segment");

  __init_rodata_load_start__ = ALIGN(__init_end__ , 4);
  .init_rodata ALIGN(__init_end__ , 4) : AT(ALIGN(__init_end__ , 4))
  {
    __init_rodata_start__ = .;
    *(.init_rodata .init_rodata.*)
  }
  __init_rodata_end__ = __init_rodata_start__ + SIZEOF(.init_rodata);
  __init_rodata_size__ = SIZEOF(.init_rodata);
  __init_rodata_load_end__ = __init_rodata_end__;

  . = ASSERT(__init_rodata_start__ == __init_rodata_end__ || (__init_rodata_end__ - __FLASH1_segment_start__) <= __FLASH1_segment_size__ , "error: .init_rodata is too large to fit in FLASH1 memory segment");

  __text_load_start__ = ALIGN(__init_rodata_end__ , 4);
  .text ALIGN(__init_rodata_end__ , 4) : AT(ALIGN(__init_rodata_end__ , 4))
  {
    __text_start__ = .;
    *(.text .text.* .gnu.linkonce.t.*)
  }
  __text_end__ = __text_start__ + SIZEOF(.text);
  __text_size__ = SIZEOF(.text);
  __text_load_end__ = __text_end__;

  . = ASSERT(__text_start__ == __text_end__ || (__text_end__ - __FLASH1_segment_start__) <= __FLASH1_segment_size__ , "error: .text is too large to fit in FLASH1 memory segment");

  __dtors_load_start__ = ALIGN(__text_end__ , 8);
  .dtors ALIGN(__text_end__ , 8) : AT(ALIGN(__text_end__ , 8))
  {
    __dtors_start__ = .;
    KEEP (*(SORT(.dtors.*))) KEEP (*(.dtors)) KEEP (*(.fini_array)) KEEP (*(SORT(.fini_array.*)))
  }
  __dtors_end__ = __dtors_start__ + SIZEOF(.dtors);
  __dtors_size__ = SIZEOF(.dtors);
  __dtors_load_end__ = __dtors_end__;

  . = ASSERT(__dtors_start__ == __dtors_end__ || (__dtors_end__ - __FLASH1_segment_start__) <= __FLASH1_segment_size__ , "error: .dtors is too large to fit in FLASH1 memory segment");

  __ctors_load_start__ = ALIGN(__dtors_end__ , 8);
  .ctors ALIGN(__dtors_end__ , 8) : AT(ALIGN(__dtors_end__ , 8))
  {
    __ctors_start__ = .;
    KEEP (*(SORT(.ctors.*))) KEEP (*(.ctors)) KEEP (*(.init_array)) KEEP (*(SORT(.init_array.*)))
  }
  __ctors_end__ = __ctors_start__ + SIZEOF(.ctors);
  __ctors_size__ = SIZEOF(.ctors);
  __ctors_load_end__ = __ctors_end__;

  . = ASSERT(__ctors_start__ == __ctors_end__ || (__ctors_end__ - __FLASH1_segment_start__) <= __FLASH1_segment_size__ , "error: .ctors is too large to fit in FLASH1 memory segment");

  __rodata_load_start__ = ALIGN(__ctors_end__ , 4);
  .rodata ALIGN(__ctors_end__ , 4) : AT(ALIGN(__ctors_end__ , 4))
  {
    __rodata_start__ = .;
    *(.rodata .rodata.* .gnu.linkonce.r.*)
  }
  __rodata_end__ = __rodata_start__ + SIZEOF(.rodata);
  __rodata_size__ = SIZEOF(.rodata);
  __rodata_load_end__ = __rodata_end__;

  . = ASSERT(__rodata_start__ == __rodata_end__ || (__rodata_end__ - __FLASH1_segment_start__) <= __FLASH1_segment_size__ , "error: .rodata is too large to fit in FLASH1 memory segment");

  __srodata_load_start__ = ALIGN(__rodata_end__ , 4);
  .srodata ALIGN(__rodata_end__ , 4) : AT(ALIGN(__rodata_end__ , 4))
  {
    __srodata_start__ = .;
    *(.srodata .srodata.*)
  }
  __srodata_end__ = __srodata_start__ + SIZEOF(.srodata);
  __srodata_size__ = SIZEOF(.srodata);
  __srodata_load_end__ = __srodata_end__;

  . = ASSERT(__srodata_start__ == __srodata_end__ || (__srodata_end__ - __FLASH1_segment_start__) <= __FLASH1_segment_size__ , "error: .srodata is too large to fit in FLASH1 memory segment");

  __eh_frame_load_start__ = ALIGN(__srodata_end__ , 4);
  .eh_frame ALIGN(__srodata_end__ , 4) : AT(ALIGN(__srodata_end__ , 4))
  {
    __eh_frame_start__ = .;
    KEEP(*(.eh_frame .eh_frame.*))
  }
  __eh_frame_end__ = __eh_frame_start__ + SIZEOF(.eh_frame);
  __eh_frame_size__ = SIZEOF(.eh_frame);
  __eh_frame_load_end__ = __eh_frame_end__;

  . = ASSERT(__eh_frame_start__ == __eh_frame_end__ || (__eh_frame_end__ - __FLASH1_segment_start__) <= __FLASH1_segment_size__ , "error: .eh_frame is too large to fit in FLASH1 memory segment");

  __gcc_except_table_load_start__ = ALIGN(__eh_frame_end__ , 4);
  .gcc_except_table ALIGN(__eh_frame_end__ , 4) : AT(ALIGN(__eh_frame_end__ , 4))
  {
    __gcc_except_table_start__ = .;
    *(.gcc_except_table .gcc_except_table.*)
  }
  __gcc_except_table_end__ = __gcc_except_table_start__ + SIZEOF(.gcc_except_table);
  __gcc_except_table_size__ = SIZEOF(.gcc_except_table);
  __gcc_except_table_load_end__ = __gcc_except_table_end__;

  . = ASSERT(__gcc_except_table_start__ == __gcc_except_table_end__ || (__gcc_except_table_end__ - __FLASH1_segment_start__) <= __FLASH1_segment_size__ , "error: .gcc_except_table is too large to fit in FLASH1 memory segment");

  __exec.itable_load_start__ = ALIGN(__gcc_except_table_end__ , 4);
  .exec.itable ALIGN(__gcc_except_table_end__ , 4) : AT(ALIGN(__gcc_except_table_end__ , 4))
  {
    __exec.itable_start__ = .;
    *(.exec.itable .exec.itable.*)
  }
  __exec.itable_end__ = __exec.itable_start__ + SIZEOF(.exec.itable);
  __exec.itable_size__ = SIZEOF(.exec.itable);
  __exec.itable_load_end__ = __exec.itable_end__;

  . = ASSERT(__exec.itable_start__ == __exec.itable_end__ || (__exec.itable_end__ - __FLASH1_segment_start__) <= __FLASH1_segment_size__ , "error: .exec.itable is too large to fit in FLASH1 memory segment");

  __fast_load_start__ = ALIGN(__exec.itable_end__ , 4);
  .fast ALIGN(__RAM1_segment_start__ , 4) : AT(ALIGN(__exec.itable_end__ , 4))
  {
    __fast_start__ = .;
    *(.fast .fast.*)
  }
  __fast_end__ = __fast_start__ + SIZEOF(.fast);
  __fast_size__ = SIZEOF(.fast);
  __fast_load_end__ = __fast_load_start__ + SIZEOF(.fast);

  . = ASSERT(__fast_load_start__ == __fast_load_end__ || (__fast_load_end__ - __FLASH1_segment_start__) <=  __FLASH1_segment_size__ , "error: .fast is too large to fit in FLASH1 memory segment");

  .fast_run ALIGN(__RAM1_segment_start__ , 4) (NOLOAD) :
  {
    __fast_run_start__ = .;
  }
  __fast_run_end__ = __fast_run_start__ + SIZEOF(.fast);
  __fast_run_size__ = __fast_run_end__ - __fast_run_start__;
  __fast_run_load_end__ = __fast_run_end__;

  . = ASSERT(__fast_run_start__ == __fast_run_end__ || (__fast_run_end__ - __RAM1_segment_start__) <= __RAM1_segment_size__ , "error: .fast_run is too large to fit in RAM1 memory segment");

  __data_load_start__ = ALIGN(__fast_load_start__ + SIZEOF(.fast) , 4);
  .data ALIGN(__fast_run_end__ , 4) : AT(ALIGN(__fast_load_start__ + SIZEOF(.fast) , 4))
  {
    __data_start__ = .;
    *(.data .data.* .gnu.linkonce.d.*)
  }
  __data_end__ = __data_start__ + SIZEOF(.data);
  __data_size__ = SIZEOF(.data);
  __data_load_end__ = __data_load_start__ + SIZEOF(.data);

  . = ASSERT(__data_load_start__ == __data_load_end__ || (__data_load_end__ - __FLASH1_segment_start__) <=  __FLASH1_segment_size__ , "error: .data is too large to fit in FLASH1 memory segment");

  .data_run ALIGN(__fast_run_end__ , 4) (NOLOAD) :
  {
    __data_run_start__ = .;
  }
  __data_run_end__ = __data_run_start__ + SIZEOF(.data);
  __data_run_size__ = __data_run_end__ - __data_run_start__;
  __data_run_load_end__ = __data_run_end__;

  . = ASSERT(__data_run_start__ == __data_run_end__ || (__data_run_end__ - __RAM1_segment_start__) <= __RAM1_segment_size__ , "error: .data_run is too large to fit in RAM1 memory segment");

  __tdata_load_start__ = ALIGN(__data_load_start__ + SIZEOF(.data) , 4);
  .tdata ALIGN(__data_run_end__ , 4) : AT(ALIGN(__data_load_start__ + SIZEOF(.data) , 4))
  {
    __tdata_start__ = .;
    *(.tdata .tdata.*)
  }
  __tdata_end__ = __tdata_start__ + SIZEOF(.tdata);
  __tdata_size__ = SIZEOF(.tdata);
  __tdata_load_end__ = __tdata_load_start__ + SIZEOF(.tdata);

  . = ASSERT(__tdata_load_start__ == __tdata_load_end__ || (__tdata_load_end__ - __FLASH1_segment_start__) <=  __FLASH1_segment_size__ , "error: .tdata is too large to fit in FLASH1 memory segment");

  .tdata_run ALIGN(__data_run_end__ , 4) (NOLOAD) :
  {
    __tdata_run_start__ = .;
  }
  __tdata_run_end__ = __tdata_run_start__ + SIZEOF(.tdata);
  __tdata_run_size__ = __tdata_run_end__ - __tdata_run_start__;
  __tdata_run_load_end__ = __tdata_run_end__;

  . = ASSERT(__tdata_run_start__ == __tdata_run_end__ || (__tdata_run_end__ - __RAM1_segment_start__) <= __RAM1_segment_size__ , "error: .tdata_run is too large to fit in RAM1 memory segment");

  __bss_load_start__ = ALIGN(__tdata_run_end__ , 4);
  .bss ALIGN(__tdata_run_end__ , 4) (NOLOAD) : AT(ALIGN(__tdata_run_end__ , 4))
  {
    __bss_start__ = .;
    *(.bss .bss.* .gnu.linkonce.b.*) *(COMMON)
  }
  __bss_end__ = __bss_start__ + SIZEOF(.bss);
  __bss_size__ = SIZEOF(.bss);
  __bss_load_end__ = __bss_end__;

  . = ASSERT(__bss_start__ == __bss_end__ || (__bss_end__ - __RAM1_segment_start__) <= __RAM1_segment_size__ , "error: .bss is too large to fit in RAM1 memory segment");

  __tbss_load_start__ = ALIGN(__bss_end__ , 4);
  .tbss ALIGN(__bss_end__ , 4) (NOLOAD) : AT(ALIGN(__bss_end__ , 4))
  {
    __tbss_start__ = .;
    *(.tbss .tbss.*)
  }
  __tbss_end__ = __tbss_start__ + SIZEOF(.tbss);
  __tbss_size__ = SIZEOF(.tbss);
  __tbss_load_end__ = __tbss_end__;

  . = ASSERT(__tbss_start__ == __tbss_end__ || (__tbss_end__ - __RAM1_segment_start__) <= __RAM1_segment_size__ , "error: .tbss is too large to fit in RAM1 memory segment");

  __sdata_load_start__ = ALIGN(__tdata_load_start__ + SIZEOF(.tdata) , 4);
  .sdata ALIGN(__tbss_end__ , 4) : AT(ALIGN(__tdata_load_start__ + SIZEOF(.tdata) , 4))
  {
    __sdata_start__ = .;
    *(.sdata.* .sdata2.*)
  }
  __sdata_end__ = __sdata_start__ + SIZEOF(.sdata);
  __sdata_size__ = SIZEOF(.sdata);
  __sdata_load_end__ = __sdata_load_start__ + SIZEOF(.sdata);

  __FLASH1_segment_used_end__ = ALIGN(__tdata_load_start__ + SIZEOF(.tdata) , 4) + SIZEOF(.sdata);
  __FLASH1_segment_used_size__ = __FLASH1_segment_used_end__ - __FLASH1_segment_start__;

  . = ASSERT(__sdata_load_start__ == __sdata_load_end__ || (__sdata_load_end__ - __FLASH1_segment_start__) <=  __FLASH1_segment_size__ , "error: .sdata is too large to fit in FLASH1 memory segment");

  .sdata_run ALIGN(__tbss_end__ , 4) (NOLOAD) :
  {
    __sdata_run_start__ = .;
  }
  __sdata_run_end__ = __sdata_run_start__ + SIZEOF(.sdata);
  __sdata_run_size__ = __sdata_run_end__ - __sdata_run_start__;
  __sdata_run_load_end__ = __sdata_run_end__;

  . = ASSERT(__sdata_run_start__ == __sdata_run_end__ || (__sdata_run_end__ - __RAM1_segment_start__) <= __RAM1_segment_size__ , "error: .sdata_run is too large to fit in RAM1 memory segment");

  __sbss_load_start__ = ALIGN(__sdata_run_end__ , 4);
  .sbss ALIGN(__sdata_run_end__ , 4) (NOLOAD) : AT(ALIGN(__sdata_run_end__ , 4))
  {
    __sbss_start__ = .;
    *(.sbss .sbss.*)
  }
  __sbss_end__ = __sbss_start__ + SIZEOF(.sbss);
  __sbss_size__ = SIZEOF(.sbss);
  __sbss_load_end__ = __sbss_end__;

  . = ASSERT(__sbss_start__ == __sbss_end__ || (__sbss_end__ - __RAM1_segment_start__) <= __RAM1_segment_size__ , "error: .sbss is too large to fit in RAM1 memory segment");

  __non_init_load_start__ = ALIGN(__sbss_end__ , 4);
  .non_init ALIGN(__sbss_end__ , 4) (NOLOAD) : AT(ALIGN(__sbss_end__ , 4))
  {
    __non_init_start__ = .;
    *(.non_init .non_init.*)
  }
  __non_init_end__ = __non_init_start__ + SIZEOF(.non_init);
  __non_init_size__ = SIZEOF(.non_init);
  __non_init_load_end__ = __non_init_end__;

  . = ASSERT(__non_init_start__ == __non_init_end__ || (__non_init_end__ - __RAM1_segment_start__) <= __RAM1_segment_size__ , "error: .non_init is too large to fit in RAM1 memory segment");

  __heap_load_start__ = ALIGN(__non_init_end__ , 16);
  .heap ALIGN(__non_init_end__ , 16) (NOLOAD) : AT(ALIGN(__non_init_end__ , 16))
  {
    __heap_start__ = .;
    *(.heap .heap.*)
    . = ALIGN(MAX(__heap_start__ + __HEAPSIZE__ , .), 16);
  }
  __heap_end__ = __heap_start__ + SIZEOF(.heap);
  __heap_size__ = SIZEOF(.heap);
  __heap_load_end__ = __heap_end__;

  . = ASSERT(__heap_start__ == __heap_end__ || (__heap_end__ - __RAM1_segment_start__) <= __RAM1_segment_size__ , "error: .heap is too large to fit in RAM1 memory segment");

  __stack_load_start__ = __RAM1_segment_start__ + (__RAM1_segment_size__ - 1024);
  .stack __RAM1_segment_start__ + (__RAM1_segment_size__ - 1024) (NOLOAD) : AT(__RAM1_segment_start__ + (__RAM1_segment_size__ - 1024))
  {
    __stack_start__ = .;
    *(.stack .stack.*)
    . = ALIGN(MAX(__stack_start__ + __STACKSIZE__ , .), 4);
  }
  __stack_end__ = __stack_start__ + SIZEOF(.stack);
  __stack_size__ = SIZEOF(.stack);
  __stack_load_end__ = __stack_end__;

  __RAM1_segment_used_end__ = __RAM1_segment_start__ + (__RAM1_segment_size__ - 1024) + SIZEOF(.stack);
  __RAM1_segment_used_size__ = __RAM1_segment_used_end__ - __RAM1_segment_start__;

  . = ASSERT(__stack_start__ == __stack_end__ || (__stack_end__ - __RAM1_segment_start__) <= __RAM1_segment_size__ , "error: .stack is too large to fit in RAM1 memory segment");
  . = ASSERT(__heap_end__ <= __stack_start__ , "error: section .heap overlaps absolute placed section .stack");

}

