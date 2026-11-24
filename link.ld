SECTIONS {
	. = 0x7c00;

	.text : ALIGN(510) {
		*(.text)
	}

	. = 0x7dfe;

	.magic : {
		SHORT(0xAA55);
	}
}
