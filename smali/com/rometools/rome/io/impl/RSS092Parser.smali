.class public Lcom/rometools/rome/io/impl/RSS092Parser;
.super Lcom/rometools/rome/io/impl/RSS091UserlandParser;
.source "RSS092Parser.java"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/rometools/rome/io/impl/RSS092Parser;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/rometools/rome/io/impl/RSS092Parser;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "rss_0.92"

    .line 43
    invoke-direct {p0, v0}, Lcom/rometools/rome/io/impl/RSS092Parser;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/rometools/rome/io/impl/RSS091UserlandParser;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getRSSVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "0.92"

    return-object v0
.end method

.method protected parseCategories(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jdom2/Element;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/rss/Category;",
            ">;"
        }
    .end annotation

    .line 161
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Element;

    .line 166
    new-instance v2, Lcom/rometools/rome/feed/rss/Category;

    invoke-direct {v2}, Lcom/rometools/rome/feed/rss/Category;-><init>()V

    const-string v3, "domain"

    .line 169
    invoke-virtual {v1, v3}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 171
    invoke-virtual {v2, v3}, Lcom/rometools/rome/feed/rss/Category;->setDomain(Ljava/lang/String;)V

    .line 174
    :cond_0
    invoke-virtual {v1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/rometools/rome/feed/rss/Category;->setValue(Ljava/lang/String;)V

    .line 176
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method protected parseChannel(Lorg/jdom2/Element;Ljava/util/Locale;)Lcom/rometools/rome/feed/WireFeed;
    .locals 2

    .line 58
    invoke-super {p0, p1, p2}, Lcom/rometools/rome/io/impl/RSS091UserlandParser;->parseChannel(Lorg/jdom2/Element;Ljava/util/Locale;)Lcom/rometools/rome/feed/WireFeed;

    move-result-object p2

    check-cast p2, Lcom/rometools/rome/feed/rss/Channel;

    const-string v0, "channel"

    .line 60
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS092Parser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p1

    const-string v0, "cloud"

    .line 62
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS092Parser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 65
    new-instance v0, Lcom/rometools/rome/feed/rss/Cloud;

    invoke-direct {v0}, Lcom/rometools/rome/feed/rss/Cloud;-><init>()V

    const-string v1, "domain"

    .line 67
    invoke-virtual {p1, v1}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/rss/Cloud;->setDomain(Ljava/lang/String;)V

    :cond_0
    const-string v1, "port"

    .line 73
    invoke-virtual {p1, v1}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 75
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/rss/Cloud;->setPort(I)V

    :cond_1
    const-string v1, "path"

    .line 79
    invoke-virtual {p1, v1}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 81
    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/rss/Cloud;->setPath(Ljava/lang/String;)V

    :cond_2
    const-string v1, "registerProcedure"

    .line 85
    invoke-virtual {p1, v1}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 87
    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/rss/Cloud;->setRegisterProcedure(Ljava/lang/String;)V

    :cond_3
    const-string v1, "protocol"

    .line 91
    invoke-virtual {p1, v1}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 93
    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/rss/Cloud;->setProtocol(Ljava/lang/String;)V

    .line 96
    :cond_4
    invoke-virtual {p2, v0}, Lcom/rometools/rome/feed/rss/Channel;->setCloud(Lcom/rometools/rome/feed/rss/Cloud;)V

    :cond_5
    return-object p2
.end method

.method protected parseItem(Lorg/jdom2/Element;Lorg/jdom2/Element;Ljava/util/Locale;)Lcom/rometools/rome/feed/rss/Item;
    .locals 6

    .line 104
    invoke-super {p0, p1, p2, p3}, Lcom/rometools/rome/io/impl/RSS091UserlandParser;->parseItem(Lorg/jdom2/Element;Lorg/jdom2/Element;Ljava/util/Locale;)Lcom/rometools/rome/feed/rss/Item;

    move-result-object p1

    const-string p3, "source"

    .line 106
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS092Parser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 108
    new-instance v0, Lcom/rometools/rome/feed/rss/Source;

    invoke-direct {v0}, Lcom/rometools/rome/feed/rss/Source;-><init>()V

    const-string v1, "url"

    .line 110
    invoke-virtual {p3, v1}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/rss/Source;->setUrl(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p3}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/rometools/rome/feed/rss/Source;->setValue(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1, v0}, Lcom/rometools/rome/feed/rss/Item;->setSource(Lcom/rometools/rome/feed/rss/Source;)V

    :cond_0
    const-string p3, "enclosure"

    .line 118
    invoke-virtual {p2, p3}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object p3

    .line 120
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Element;

    .line 126
    new-instance v2, Lcom/rometools/rome/feed/rss/Enclosure;

    invoke-direct {v2}, Lcom/rometools/rome/feed/rss/Enclosure;-><init>()V

    const-string v3, "url"

    .line 128
    invoke-virtual {v1, v3}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 130
    invoke-virtual {v2, v3}, Lcom/rometools/rome/feed/rss/Enclosure;->setUrl(Ljava/lang/String;)V

    :cond_1
    const-string v3, "length"

    .line 134
    invoke-virtual {v1, v3}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    .line 135
    invoke-static {v3, v4, v5}, Lcom/rometools/rome/io/impl/NumberParser;->parseLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/rometools/rome/feed/rss/Enclosure;->setLength(J)V

    const-string v3, "type"

    .line 138
    invoke-virtual {v1, v3}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 140
    invoke-virtual {v2, v1}, Lcom/rometools/rome/feed/rss/Enclosure;->setType(Ljava/lang/String;)V

    .line 143
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    :cond_3
    invoke-virtual {p1, v0}, Lcom/rometools/rome/feed/rss/Item;->setEnclosures(Ljava/util/List;)V

    :cond_4
    const-string p3, "category"

    .line 151
    invoke-virtual {p2, p3}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 152
    invoke-virtual {p0, p2}, Lcom/rometools/rome/io/impl/RSS092Parser;->parseCategories(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/rometools/rome/feed/rss/Item;->setCategories(Ljava/util/List;)V

    return-object p1
.end method

.method protected parseItemDescription(Lorg/jdom2/Element;Lorg/jdom2/Element;)Lcom/rometools/rome/feed/rss/Description;
    .locals 7

    .line 187
    new-instance p1, Lcom/rometools/rome/feed/rss/Description;

    invoke-direct {p1}, Lcom/rometools/rome/feed/rss/Description;-><init>()V

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    new-instance v1, Lorg/jdom2/output/XMLOutputter;

    invoke-direct {v1}, Lorg/jdom2/output/XMLOutputter;-><init>()V

    .line 190
    invoke-virtual {p2}, Lorg/jdom2/Element;->getContent()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jdom2/Content;

    .line 191
    sget-object v4, Lcom/rometools/rome/io/impl/RSS092Parser$1;->$SwitchMap$org$jdom2$Content$CType:[I

    invoke-virtual {v3}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jdom2/Content$CType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 201
    :pswitch_0
    check-cast v3, Lorg/jdom2/Element;

    invoke-virtual {v1, v3}, Lorg/jdom2/output/XMLOutputter;->outputString(Lorg/jdom2/Element;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 197
    :pswitch_1
    sget-object v4, Lcom/rometools/rome/io/impl/RSS092Parser;->LOG:Lorg/slf4j/Logger;

    const-string v5, "Entity: {}"

    invoke-virtual {v3}, Lorg/jdom2/Content;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 198
    invoke-virtual {v3}, Lorg/jdom2/Content;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 194
    :pswitch_2
    invoke-virtual {v3}, Lorg/jdom2/Content;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/rometools/rome/feed/rss/Description;->setValue(Ljava/lang/String;)V

    const-string v0, "type"

    .line 209
    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p2, "text/html"

    .line 213
    :cond_1
    invoke-virtual {p1, p2}, Lcom/rometools/rome/feed/rss/Description;->setType(Ljava/lang/String;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
