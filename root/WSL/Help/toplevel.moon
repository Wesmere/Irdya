
wsl_handler
    id: "toplevel"
    description: [[The toplevel tag denotes sections and topics that should be shown immediately when the "Help" button is clicked on (see the "help" action, ThemeWSL). The sections referenced within this tag are read recursively, including all subsections.]]

    scheme:

        sections:
            description: "a list of IDs of the sections to include recursively."
        topics:
            description: "a list of IDs of the topics to show as not being included in a section; i.e. top-level topics."
