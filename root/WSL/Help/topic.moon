wsl_handler
    id: "topic"
    scope: "Help"

    description: "The topic table describes one topic, i.e, one help page."

    scheme:
        id:
            description: "is the unique ID for this topic."
            type: "string"
        title:
            description: "(translatable) is the title of the topic. It is displayed in the left menu and as a header in the text area."
            type: "tString"
        text:
            description: "(translatable) is the contents of the topics. May contain markup described below."
            type: "tString"
