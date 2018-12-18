.class public Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;
.super Lcom/rometools/rome/io/impl/RSS090Generator;
.source "RSS091UserlandGenerator.java"


# instance fields
.field private final version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "rss_0.91U"

    const-string v1, "0.91"

    .line 44
    invoke-direct {p0, v0, v1}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/rometools/rome/io/impl/RSS090Generator;-><init>(Ljava/lang/String;)V

    .line 49
    iput-object p2, p0, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->version:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected addChannel(Lcom/rometools/rome/feed/rss/Channel;Lorg/jdom2/Element;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    .line 71
    invoke-super {p0, p1, p2}, Lcom/rometools/rome/io/impl/RSS090Generator;->addChannel(Lcom/rometools/rome/feed/rss/Channel;Lorg/jdom2/Element;)V

    const-string v0, "channel"

    .line 73
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p2

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->addImage(Lcom/rometools/rome/feed/rss/Channel;Lorg/jdom2/Element;)V

    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->addTextInput(Lcom/rometools/rome/feed/rss/Channel;Lorg/jdom2/Element;)V

    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->addItems(Lcom/rometools/rome/feed/rss/Channel;Lorg/jdom2/Element;)V

    return-void
.end method

.method protected checkChannelConstraints(Lorg/jdom2/Element;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    const-string v0, "title"

    const/16 v1, 0x64

    const/4 v2, 0x1

    .line 84
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    const-string v0, "description"

    const/16 v3, 0x1f4

    .line 85
    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    const-string v0, "link"

    .line 86
    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    const-string v0, "language"

    const/4 v4, 0x2

    const/4 v5, 0x5

    .line 87
    invoke-virtual {p0, p1, v0, v4, v5}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    const-string v0, "rating"

    const/16 v4, 0x14

    .line 88
    invoke-virtual {p0, p1, v0, v4, v3}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->checkLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    const-string v0, "copyright"

    .line 89
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->checkLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    const-string v0, "pubDate"

    .line 90
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->checkLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    const-string v0, "lastBuildDate"

    .line 91
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->checkLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    const-string v0, "docs"

    .line 92
    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->checkLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    const-string v0, "managingEditor"

    .line 93
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->checkLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    const-string v0, "webMaster"

    .line 94
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->checkLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    const-string v0, "skipHours"

    .line 96
    invoke-virtual {p1, v0}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 100
    invoke-virtual {p1}, Lorg/jdom2/Element;->getChildren()Ljava/util/List;

    move-result-object p1

    .line 101
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Element;

    .line 103
    invoke-virtual {v0}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 105
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->isHourFormat24()Z

    move-result v1

    if-eqz v1, :cond_1

    if-lt v0, v2, :cond_0

    const/16 v1, 0x18

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    new-instance p1, Lcom/rometools/rome/io/FeedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hour value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", it must be between 1 and 24"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/rometools/rome/io/FeedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-ltz v0, :cond_2

    const/16 v1, 0x17

    if-gt v0, v1, :cond_2

    goto :goto_0

    .line 111
    :cond_2
    new-instance p1, Lcom/rometools/rome/io/FeedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hour value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", it must be between 0 and 23"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/rometools/rome/io/FeedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method

.method protected checkImageConstraints(Lorg/jdom2/Element;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    const-string v0, "title"

    const/16 v1, 0x64

    const/4 v2, 0x1

    .line 123
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    const-string v0, "url"

    const/16 v3, 0x1f4

    .line 124
    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    const-string v0, "link"

    .line 125
    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->checkLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    const-string v0, "width"

    const/4 v3, 0x3

    .line 126
    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->checkLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    const-string v0, "width"

    .line 127
    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->checkLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    const-string v0, "description"

    .line 128
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->checkLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    return-void
.end method

.method protected checkItemConstraints(Lorg/jdom2/Element;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    const-string v0, "title"

    const/4 v1, 0x1

    const/16 v2, 0x64

    .line 133
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    const-string v0, "link"

    const/16 v2, 0x1f4

    .line 134
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    const-string v0, "description"

    .line 135
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->checkLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    return-void
.end method

.method protected checkTextInputConstraints(Lorg/jdom2/Element;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    const-string v0, "title"

    const/4 v1, 0x1

    const/16 v2, 0x64

    .line 140
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    const-string v0, "description"

    const/16 v2, 0x1f4

    .line 141
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    const-string v0, "name"

    const/16 v3, 0x14

    .line 142
    invoke-virtual {p0, p1, v0, v1, v3}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    const-string v0, "link"

    .line 143
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    return-void
.end method

.method protected createDocument(Lorg/jdom2/Element;)Lorg/jdom2/Document;
    .locals 1

    .line 148
    new-instance v0, Lorg/jdom2/Document;

    invoke-direct {v0, p1}, Lorg/jdom2/Document;-><init>(Lorg/jdom2/Element;)V

    return-object v0
.end method

.method protected createRootElement(Lcom/rometools/rome/feed/rss/Channel;)Lorg/jdom2/Element;
    .locals 3

    .line 153
    new-instance p1, Lorg/jdom2/Element;

    const-string v0, "rss"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 154
    new-instance v0, Lorg/jdom2/Attribute;

    const-string v1, "version"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1, v0}, Lorg/jdom2/Element;->setAttribute(Lorg/jdom2/Attribute;)Lorg/jdom2/Element;

    .line 156
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->getContentNamespace()Lorg/jdom2/Namespace;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jdom2/Element;->addNamespaceDeclaration(Lorg/jdom2/Namespace;)Z

    .line 157
    invoke-virtual {p0, p1}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->generateModuleNamespaceDefs(Lorg/jdom2/Element;)V

    return-object p1
.end method

.method protected generateSkipDaysElement(Ljava/util/List;)Lorg/jdom2/Element;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jdom2/Element;"
        }
    .end annotation

    .line 162
    new-instance v0, Lorg/jdom2/Element;

    const-string v1, "skipDays"

    invoke-direct {v0, v1}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "day"

    .line 164
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected generateSkipHoursElement(Ljava/util/List;)Lorg/jdom2/Element;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/jdom2/Element;"
        }
    .end annotation

    .line 170
    new-instance v0, Lorg/jdom2/Element;

    const-string v1, "skipHours"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 171
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const-string v2, "hour"

    .line 172
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected getFeedNamespace()Lorg/jdom2/Namespace;
    .locals 1

    .line 54
    sget-object v0, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    return-object v0
.end method

.method protected getVersion()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->version:Ljava/lang/String;

    return-object v0
.end method

.method protected isHourFormat24()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected populateChannel(Lcom/rometools/rome/feed/rss/Channel;Lorg/jdom2/Element;)V
    .locals 3

    .line 180
    invoke-super {p0, p1, p2}, Lcom/rometools/rome/io/impl/RSS090Generator;->populateChannel(Lcom/rometools/rome/feed/rss/Channel;Lorg/jdom2/Element;)V

    .line 182
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Channel;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "language"

    .line 184
    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 187
    :cond_0
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Channel;->getRating()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "rating"

    .line 189
    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 192
    :cond_1
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Channel;->getCopyright()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "copyright"

    .line 194
    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 197
    :cond_2
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Channel;->getPubDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "pubDate"

    .line 199
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v2}, Lcom/rometools/rome/io/impl/DateParser;->formatRFC822(Ljava/util/Date;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 202
    :cond_3
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Channel;->getLastBuildDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "lastBuildDate"

    .line 204
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v2}, Lcom/rometools/rome/io/impl/DateParser;->formatRFC822(Ljava/util/Date;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 207
    :cond_4
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Channel;->getDocs()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "docs"

    .line 209
    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 212
    :cond_5
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Channel;->getManagingEditor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "managingEditor"

    .line 214
    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 217
    :cond_6
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Channel;->getWebMaster()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v1, "webMaster"

    .line 219
    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 222
    :cond_7
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Channel;->getSkipHours()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 223
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 224
    invoke-virtual {p0, v0}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->generateSkipHoursElement(Ljava/util/List;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 227
    :cond_8
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Channel;->getSkipDays()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 228
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 229
    invoke-virtual {p0, p1}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->generateSkipDaysElement(Ljava/util/List;)Lorg/jdom2/Element;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    :cond_9
    return-void
.end method

.method protected populateFeed(Lcom/rometools/rome/feed/rss/Channel;Lorg/jdom2/Element;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    .line 236
    invoke-virtual {p0, p1, p2}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->addChannel(Lcom/rometools/rome/feed/rss/Channel;Lorg/jdom2/Element;)V

    return-void
.end method

.method protected populateImage(Lcom/rometools/rome/feed/rss/Image;Lorg/jdom2/Element;)V
    .locals 2

    .line 242
    invoke-super {p0, p1, p2}, Lcom/rometools/rome/io/impl/RSS090Generator;->populateImage(Lcom/rometools/rome/feed/rss/Image;Lorg/jdom2/Element;)V

    .line 244
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Image;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "width"

    .line 246
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 249
    :cond_0
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Image;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "height"

    .line 251
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 254
    :cond_1
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Image;->getDescription()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "description"

    .line 256
    invoke-virtual {p0, v0, p1}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    :cond_2
    return-void
.end method

.method protected populateItem(Lcom/rometools/rome/feed/rss/Item;Lorg/jdom2/Element;I)V
    .locals 2

    .line 264
    invoke-super {p0, p1, p2, p3}, Lcom/rometools/rome/io/impl/RSS090Generator;->populateItem(Lcom/rometools/rome/feed/rss/Item;Lorg/jdom2/Element;I)V

    .line 266
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Item;->getDescription()Lcom/rometools/rome/feed/rss/Description;

    move-result-object p3

    if-eqz p3, :cond_0

    const-string v0, "description"

    .line 268
    invoke-virtual {p3}, Lcom/rometools/rome/feed/rss/Description;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, v0, p3}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 271
    :cond_0
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->getContentNamespace()Lorg/jdom2/Namespace;

    move-result-object p3

    .line 272
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Item;->getContent()Lcom/rometools/rome/feed/rss/Content;

    move-result-object v0

    .line 273
    invoke-virtual {p3}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/rometools/rome/feed/rss/Item;->getModule(Ljava/lang/String;)Lcom/rometools/rome/feed/module/Module;

    move-result-object p1

    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    .line 274
    new-instance p1, Lorg/jdom2/Element;

    const-string v1, "encoded"

    invoke-direct {p1, v1, p3}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 275
    invoke-virtual {v0}, Lcom/rometools/rome/feed/rss/Content;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/jdom2/Element;->addContent(Ljava/lang/String;)Lorg/jdom2/Element;

    .line 276
    invoke-virtual {p2, p1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    :cond_1
    return-void
.end method
