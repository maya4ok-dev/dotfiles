return {
    {
        require("oil").setup ({
            default_file_explorer = true,
            columns = {
                "icon",
                "size",
                "mtime",
            },
            skip_confirm_for_simple_edits = true,
            natural_order = true,
        })
    }
}

