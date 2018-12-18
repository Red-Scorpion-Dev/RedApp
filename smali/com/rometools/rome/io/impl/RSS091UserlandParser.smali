.class public Lcom/rometools/rome/io/impl/RSS091UserlandParser;
.super Lcom/rometools/rome/io/impl/RSS090Parser;
.source "RSS091UserlandParser.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "rss_0.91U"

    .line 39
    invoke-direct {p0, v0}, Lcom/rometools/rome/io/impl/RSS091UserlandParser;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/rometools/rome/io/impl/RSS090Parser;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    return-void
.end method


# virtual methods
.method protected getImage(Lorg/jdom2/Element;)Lorg/jdom2/Element;
    .locals 2

    const-string v0, "channel"

    .line 221
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS091UserlandParser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "image"

    .line 224
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS091UserlandParser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getItems(Lorg/jdom2/Element;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdom2/Element;",
            ")",
            "Ljava/util/List<",
            "Lorg/jdom2/Element;",
            ">;"
        }
    .end annotation

    const-string v0, "channel"

    .line 205
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS091UserlandParser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "item"

    .line 208
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS091UserlandParser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 210
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected getRSSNamespace()Lorg/jdom2/Namespace;
    .locals 1

    const-string v0, ""

    .line 59
    invoke-static {v0}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v0

    return-object v0
.end method

.method protected getRSSVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "0.91"

    return-object v0
.end method

.method protected getTextInput(Lorg/jdom2/Element;)Lorg/jdom2/Element;
    .locals 3

    .line 244
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS091UserlandParser;->getTextInputLabel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "channel"

    .line 246
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS091UserlandParser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS091UserlandParser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getTextInputLabel()Ljava/lang/String;
    .locals 1

    const-string v0, "textInput"

    return-object v0
.end method

.method protected isHourFormat24(Lorg/jdom2/Element;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isMyType(Lorg/jdom2/Document;)Z
    .locals 2

    .line 48
    invoke-virtual {p1}, Lorg/jdom2/Document;->getRootElement()Lorg/jdom2/Element;

    move-result-object p1

    const-string v0, "version"

    .line 49
    invoke-virtual {p1, v0}, Lorg/jdom2/Element;->getAttribute(Ljava/lang/String;)Lorg/jdom2/Attribute;

    move-result-object v0

    .line 50
    invoke-virtual {p1}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "rss"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jdom2/Attribute;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS091UserlandParser;->getRSSVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected parseChannel(Lorg/jdom2/Element;Ljava/util/Locale;)Lcom/rometools/rome/feed/WireFeed;
    .locals 4

    .line 82
    invoke-super {p0, p1, p2}, Lcom/rometools/rome/io/impl/RSS090Parser;->parseChannel(Lorg/jdom2/Element;Ljava/util/Locale;)Lcom/rometools/rome/feed/WireFeed;

    move-result-object v0

    check-cast v0, Lcom/rometools/rome/feed/rss/Channel;

    const-string v1, "channel"

    .line 84
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS091UserlandParser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p1

    const-string v1, "language"

    .line 86
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS091UserlandParser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/rss/Channel;->setLanguage(Ljava/lang/String;)V

    :cond_0
    const-string v1, "rating"

    .line 91
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS091UserlandParser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 93
    invoke-virtual {v1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/rss/Channel;->setRating(Ljava/lang/String;)V

    :cond_1
    const-string v1, "copyright"

    .line 96
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS091UserlandParser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 98
    invoke-virtual {v1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/rss/Channel;->setCopyright(Ljava/lang/String;)V

    :cond_2
    const-string v1, "pubDate"

    .line 101
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS091UserlandParser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 103
    invoke-virtual {v1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/rometools/rome/io/impl/DateParser;->parseDate(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/rss/Channel;->setPubDate(Ljava/util/Date;)V

    :cond_3
    const-string v1, "lastBuildDate"

    .line 106
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS091UserlandParser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 108
    invoke-virtual {v1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/rometools/rome/io/impl/DateParser;->parseDate(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/rometools/rome/feed/rss/Channel;->setLastBuildDate(Ljava/util/Date;)V

    :cond_4
    const-string p2, "docs"

    .line 111
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS091UserlandParser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 113
    invoke-virtual {p2}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/rometools/rome/feed/rss/Channel;->setDocs(Ljava/lang/String;)V

    :cond_5
    const-string p2, "generator"

    .line 116
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS091UserlandParser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 118
    invoke-virtual {p2}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/rometools/rome/feed/rss/Channel;->setGenerator(Ljava/lang/String;)V

    :cond_6
    const-string p2, "managingEditor"

    .line 121
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS091UserlandParser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 123
    invoke-virtual {p2}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/rometools/rome/feed/rss/Channel;->setManagingEditor(Ljava/lang/String;)V

    :cond_7
    const-string p2, "webMaster"

    .line 126
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS091UserlandParser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 128
    invoke-virtual {p2}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/rometools/rome/feed/rss/Channel;->setWebMaster(Ljava/lang/String;)V

    :cond_8
    const-string p2, "skipHours"

    .line 131
    invoke-virtual {p1, p2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "hour"

    .line 134
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS091UserlandParser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object p2

    .line 135
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom2/Element;

    .line 136
    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v2}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    :cond_9
    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/rss/Channel;->setSkipHours(Ljava/util/List;)V

    :cond_a
    const-string p2, "skipDays"

    .line 141
    invoke-virtual {p1, p2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 143
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "day"

    .line 144
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS091UserlandParser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object p1

    .line 145
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Element;

    .line 146
    invoke-virtual {v1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 148
    :cond_b
    invoke-virtual {v0, p2}, Lcom/rometools/rome/feed/rss/Channel;->setSkipDays(Ljava/util/List;)V

    :cond_c
    return-object v0
.end method

.method protected parseImage(Lorg/jdom2/Element;)Lcom/rometools/rome/feed/rss/Image;
    .locals 3

    .line 167
    invoke-super {p0, p1}, Lcom/rometools/rome/io/impl/RSS090Parser;->parseImage(Lorg/jdom2/Element;)Lcom/rometools/rome/feed/rss/Image;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 170
    invoke-virtual {p0, p1}, Lcom/rometools/rome/io/impl/RSS091UserlandParser;->getImage(Lorg/jdom2/Element;)Lorg/jdom2/Element;

    move-result-object p1

    const-string v1, "width"

    .line 172
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS091UserlandParser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {v1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rometools/rome/io/impl/NumberParser;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/rss/Image;->setWidth(Ljava/lang/Integer;)V

    :cond_0
    const-string v1, "height"

    .line 180
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS091UserlandParser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 182
    invoke-virtual {v1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rometools/rome/io/impl/NumberParser;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 184
    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/rss/Image;->setHeight(Ljava/lang/Integer;)V

    :cond_1
    const-string v1, "description"

    .line 188
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS091UserlandParser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 190
    invoke-virtual {p1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/rss/Image;->setDescription(Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method protected parseItem(Lorg/jdom2/Element;Lorg/jdom2/Element;Ljava/util/Locale;)Lcom/rometools/rome/feed/rss/Item;
    .locals 2

    .line 269
    invoke-super {p0, p1, p2, p3}, Lcom/rometools/rome/io/impl/RSS090Parser;->parseItem(Lorg/jdom2/Element;Lorg/jdom2/Element;Ljava/util/Locale;)Lcom/rometools/rome/feed/rss/Item;

    move-result-object p3

    const-string v0, "description"

    .line 271
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS091UserlandParser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0, p1, v0}, Lcom/rometools/rome/io/impl/RSS091UserlandParser;->parseItemDescription(Lorg/jdom2/Element;Lorg/jdom2/Element;)Lcom/rometools/rome/feed/rss/Description;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/rometools/rome/feed/rss/Item;->setDescription(Lcom/rometools/rome/feed/rss/Description;)V

    :cond_0
    const-string p1, "encoded"

    .line 276
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS091UserlandParser;->getContentNamespace()Lorg/jdom2/Namespace;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 278
    new-instance p2, Lcom/rometools/rome/feed/rss/Content;

    invoke-direct {p2}, Lcom/rometools/rome/feed/rss/Content;-><init>()V

    const-string v0, "html"

    .line 279
    invoke-virtual {p2, v0}, Lcom/rometools/rome/feed/rss/Content;->setType(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/rometools/rome/feed/rss/Content;->setValue(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p3, p2}, Lcom/rometools/rome/feed/rss/Item;->setContent(Lcom/rometools/rome/feed/rss/Content;)V

    :cond_1
    return-object p3
.end method

.method protected parseItemDescription(Lorg/jdom2/Element;Lorg/jdom2/Element;)Lcom/rometools/rome/feed/rss/Description;
    .locals 1

    .line 289
    new-instance p1, Lcom/rometools/rome/feed/rss/Description;

    invoke-direct {p1}, Lcom/rometools/rome/feed/rss/Description;-><init>()V

    const-string v0, "text/plain"

    .line 290
    invoke-virtual {p1, v0}, Lcom/rometools/rome/feed/rss/Description;->setType(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/rometools/rome/feed/rss/Description;->setValue(Ljava/lang/String;)V

    return-object p1
.end method
