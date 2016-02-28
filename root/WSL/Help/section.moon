
wsl_handler

    id: "section"
    default: "The section tag describes a section in the help browser. A section contains subsections and/or topics."

    scheme:

        id:
            description: "is the unique ID for this section."

        title:
            description: "(translatable) is the title of the section. It is displayed in the left menu."

        sections:
            description: "is a list of IDs of the sections that should be this section's subsections."

        topics:
            description: "is a list of IDs of the topics that should be included in this section. Topics will be included in the order listed unless sorting is requested."

        generator:
            description: "provides the name of a function that will generate a list of topics and include them in this section. These topics will be included after topics listed on the topics key unless sort_topics is yes."

        sort_topics:
            description: "specifies whether or not to list the topics sorted by title or in the order listed on the topics key. yes indicates fixed and generated topics should be sorted together by title. no indicates that topics should appear in the order listed with fixed topics appearing before generated topics. generated indicates that fixed topics should not be sorted and will be followed by generated topics sorted by the generator. The default is generated."
