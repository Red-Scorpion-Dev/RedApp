.class public Lcom/rometools/rome/io/impl/RSS090Generator;
.super Lcom/rometools/rome/io/impl/BaseWireFeedGenerator;
.source "RSS090Generator.java"


# static fields
.field private static final CONTENT_NS:Lorg/jdom2/Namespace;

.field private static final CONTENT_URI:Ljava/lang/String; = "http://purl.org/rss/1.0/modules/content/"

.field private static final RDF_NS:Lorg/jdom2/Namespace;

.field private static final RDF_URI:Ljava/lang/String; = "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

.field private static final RSS_NS:Lorg/jdom2/Namespace;

.field private static final RSS_URI:Ljava/lang/String; = "http://my.netscape.com/rdf/simple/0.9/"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "rdf"

    const-string v1, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    .line 42
    invoke-static {v0, v1}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v0

    sput-object v0, Lcom/rometools/rome/io/impl/RSS090Generator;->RDF_NS:Lorg/jdom2/Namespace;

    const-string v0, "http://my.netscape.com/rdf/simple/0.9/"

    .line 43
    invoke-static {v0}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v0

    sput-object v0, Lcom/rometools/rome/io/impl/RSS090Generator;->RSS_NS:Lorg/jdom2/Namespace;

    const-string v0, "content"

    const-string v1, "http://purl.org/rss/1.0/modules/content/"

    .line 44
    invoke-static {v0, v1}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v0

    sput-object v0, Lcom/rometools/rome/io/impl/RSS090Generator;->CONTENT_NS:Lorg/jdom2/Namespace;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "rss_0.9"

    .line 47
    invoke-direct {p0, v0}, Lcom/rometools/rome/io/impl/RSS090Generator;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/rometools/rome/io/impl/BaseWireFeedGenerator;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected addChannel(Lcom/rometools/rome/feed/rss/Channel;Lorg/jdom2/Element;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    .line 97
    new-instance v0, Lorg/jdom2/Element;

    const-string v1, "channel"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS090Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 98
    invoke-virtual {p0, p1, v0}, Lcom/rometools/rome/io/impl/RSS090Generator;->populateChannel(Lcom/rometools/rome/feed/rss/Channel;Lorg/jdom2/Element;)V

    .line 99
    invoke-virtual {p0, v0}, Lcom/rometools/rome/io/impl/RSS090Generator;->checkChannelConstraints(Lorg/jdom2/Element;)V

    .line 100
    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 101
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Channel;->getModules()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/rometools/rome/io/impl/RSS090Generator;->generateFeedModules(Ljava/util/List;Lorg/jdom2/Element;)V

    return-void
.end method

.method protected addImage(Lcom/rometools/rome/feed/rss/Channel;Lorg/jdom2/Element;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    .line 149
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Channel;->getImage()Lcom/rometools/rome/feed/rss/Image;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 151
    new-instance v0, Lorg/jdom2/Element;

    const-string v1, "image"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS090Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 152
    invoke-virtual {p0, p1, v0}, Lcom/rometools/rome/io/impl/RSS090Generator;->populateImage(Lcom/rometools/rome/feed/rss/Image;Lorg/jdom2/Element;)V

    .line 153
    invoke-virtual {p0, v0}, Lcom/rometools/rome/io/impl/RSS090Generator;->checkImageConstraints(Lorg/jdom2/Element;)V

    .line 154
    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    :cond_0
    return-void
.end method

.method protected addItem(Lcom/rometools/rome/feed/rss/Item;Lorg/jdom2/Element;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    .line 216
    new-instance v0, Lorg/jdom2/Element;

    const-string v1, "item"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS090Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 217
    invoke-virtual {p0, p1, v0, p3}, Lcom/rometools/rome/io/impl/RSS090Generator;->populateItem(Lcom/rometools/rome/feed/rss/Item;Lorg/jdom2/Element;I)V

    .line 218
    invoke-virtual {p0, v0}, Lcom/rometools/rome/io/impl/RSS090Generator;->checkItemConstraints(Lorg/jdom2/Element;)V

    .line 219
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Item;->getModules()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/rometools/rome/io/impl/RSS090Generator;->generateItemModules(Ljava/util/List;Lorg/jdom2/Element;)V

    .line 220
    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    return-void
.end method

.method protected addItems(Lcom/rometools/rome/feed/rss/Channel;Lorg/jdom2/Element;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    .line 208
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Channel;->getItems()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 209
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 210
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rometools/rome/feed/rss/Item;

    invoke-virtual {p0, v1, p2, v0}, Lcom/rometools/rome/io/impl/RSS090Generator;->addItem(Lcom/rometools/rome/feed/rss/Item;Lorg/jdom2/Element;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {p0, p2}, Lcom/rometools/rome/io/impl/RSS090Generator;->checkItemsConstraints(Lorg/jdom2/Element;)V

    return-void
.end method

.method protected addTextInput(Lcom/rometools/rome/feed/rss/Channel;Lorg/jdom2/Element;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    .line 179
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Channel;->getTextInput()Lcom/rometools/rome/feed/rss/TextInput;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 181
    new-instance v0, Lorg/jdom2/Element;

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS090Generator;->getTextInputLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS090Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 182
    invoke-virtual {p0, p1, v0}, Lcom/rometools/rome/io/impl/RSS090Generator;->populateTextInput(Lcom/rometools/rome/feed/rss/TextInput;Lorg/jdom2/Element;)V

    .line 183
    invoke-virtual {p0, v0}, Lcom/rometools/rome/io/impl/RSS090Generator;->checkTextInputConstraints(Lorg/jdom2/Element;)V

    .line 184
    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    :cond_0
    return-void
.end method

.method protected checkChannelConstraints(Lorg/jdom2/Element;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    const-string v0, "title"

    const/4 v1, 0x0

    const/16 v2, 0x28

    .line 242
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/rometools/rome/io/impl/RSS090Generator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    const-string v0, "description"

    const/16 v2, 0x1f4

    .line 243
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/rometools/rome/io/impl/RSS090Generator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    const-string v0, "link"

    .line 244
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/rometools/rome/io/impl/RSS090Generator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    return-void
.end method

.method protected checkImageConstraints(Lorg/jdom2/Element;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    const-string v0, "title"

    const/4 v1, 0x0

    const/16 v2, 0x28

    .line 248
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/rometools/rome/io/impl/RSS090Generator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    const-string v0, "url"

    const/16 v2, 0x1f4

    .line 249
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/rometools/rome/io/impl/RSS090Generator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    const-string v0, "link"

    .line 250
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/rometools/rome/io/impl/RSS090Generator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

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

    const/4 v1, 0x0

    const/16 v2, 0x64

    .line 268
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/rometools/rome/io/impl/RSS090Generator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    const-string v0, "link"

    const/16 v2, 0x1f4

    .line 269
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/rometools/rome/io/impl/RSS090Generator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    return-void
.end method

.method protected checkItemsConstraints(Lorg/jdom2/Element;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    const-string v0, "item"

    .line 261
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS090Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0xf

    if-gt p1, v0, :cond_0

    return-void

    .line 263
    :cond_0
    new-instance v0, Lcom/rometools/rome/io/FeedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS090Generator;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " feed, item count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " it must be between 1 an 15"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/rometools/rome/io/FeedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkLength(Lorg/jdom2/Element;Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    .line 137
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS090Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v0

    if-eqz v0, :cond_3

    if-lez p3, :cond_1

    .line 139
    invoke-virtual {v0}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, p3, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    new-instance p4, Lcom/rometools/rome/io/FeedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS090Generator;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " feed, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "short of "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " length"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Lcom/rometools/rome/io/FeedException;-><init>(Ljava/lang/String;)V

    throw p4

    :cond_1
    :goto_0
    const/4 p3, -0x1

    if-le p4, p3, :cond_3

    .line 142
    invoke-virtual {v0}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-gt p3, p4, :cond_2

    goto :goto_1

    .line 143
    :cond_2
    new-instance p3, Lcom/rometools/rome/io/FeedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS090Generator;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " feed, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "exceeds "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " length"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/rometools/rome/io/FeedException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_3
    :goto_1
    return-void
.end method

.method protected checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS090Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/rometools/rome/io/impl/RSS090Generator;->checkLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    return-void

    .line 130
    :cond_0
    new-instance p3, Lcom/rometools/rome/io/FeedException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS090Generator;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " feed, missing "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/rometools/rome/io/FeedException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method protected checkTextInputConstraints(Lorg/jdom2/Element;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    const-string v0, "title"

    const/4 v1, 0x0

    const/16 v2, 0x28

    .line 254
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/rometools/rome/io/impl/RSS090Generator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    const-string v0, "description"

    const/16 v2, 0x64

    .line 255
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/rometools/rome/io/impl/RSS090Generator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    const-string v0, "name"

    const/16 v2, 0x1f4

    .line 256
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/rometools/rome/io/impl/RSS090Generator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    const-string v0, "link"

    .line 257
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/rometools/rome/io/impl/RSS090Generator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    return-void
.end method

.method protected createDocument(Lorg/jdom2/Element;)Lorg/jdom2/Document;
    .locals 1

    .line 76
    new-instance v0, Lorg/jdom2/Document;

    invoke-direct {v0, p1}, Lorg/jdom2/Document;-><init>(Lorg/jdom2/Element;)V

    return-object v0
.end method

.method protected createRootElement(Lcom/rometools/rome/feed/rss/Channel;)Lorg/jdom2/Element;
    .locals 2

    .line 80
    new-instance p1, Lorg/jdom2/Element;

    const-string v0, "RDF"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS090Generator;->getRDFNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 81
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS090Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jdom2/Element;->addNamespaceDeclaration(Lorg/jdom2/Namespace;)Z

    .line 82
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS090Generator;->getRDFNamespace()Lorg/jdom2/Namespace;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jdom2/Element;->addNamespaceDeclaration(Lorg/jdom2/Namespace;)Z

    .line 83
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS090Generator;->getContentNamespace()Lorg/jdom2/Namespace;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jdom2/Element;->addNamespaceDeclaration(Lorg/jdom2/Namespace;)Z

    .line 84
    invoke-virtual {p0, p1}, Lcom/rometools/rome/io/impl/RSS090Generator;->generateModuleNamespaceDefs(Lorg/jdom2/Element;)V

    return-object p1
.end method

.method public generate(Lcom/rometools/rome/feed/WireFeed;)Lorg/jdom2/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    .line 56
    check-cast p1, Lcom/rometools/rome/feed/rss/Channel;

    .line 57
    invoke-virtual {p0, p1}, Lcom/rometools/rome/io/impl/RSS090Generator;->createRootElement(Lcom/rometools/rome/feed/rss/Channel;)Lorg/jdom2/Element;

    move-result-object v0

    .line 58
    invoke-virtual {p0, p1, v0}, Lcom/rometools/rome/io/impl/RSS090Generator;->populateFeed(Lcom/rometools/rome/feed/rss/Channel;Lorg/jdom2/Element;)V

    .line 59
    invoke-static {v0}, Lcom/rometools/rome/io/impl/RSS090Generator;->purgeUnusedNamespaceDeclarations(Lorg/jdom2/Element;)V

    .line 60
    invoke-virtual {p0, v0}, Lcom/rometools/rome/io/impl/RSS090Generator;->createDocument(Lorg/jdom2/Element;)Lorg/jdom2/Document;

    move-result-object p1

    return-object p1
.end method

.method protected generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;
    .locals 2

    .line 236
    new-instance v0, Lorg/jdom2/Element;

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS090Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 237
    invoke-virtual {v0, p2}, Lorg/jdom2/Element;->addContent(Ljava/lang/String;)Lorg/jdom2/Element;

    return-object v0
.end method

.method protected getContentNamespace()Lorg/jdom2/Namespace;
    .locals 1

    .line 72
    sget-object v0, Lcom/rometools/rome/io/impl/RSS090Generator;->CONTENT_NS:Lorg/jdom2/Namespace;

    return-object v0
.end method

.method protected getFeedNamespace()Lorg/jdom2/Namespace;
    .locals 1

    .line 64
    sget-object v0, Lcom/rometools/rome/io/impl/RSS090Generator;->RSS_NS:Lorg/jdom2/Namespace;

    return-object v0
.end method

.method protected getRDFNamespace()Lorg/jdom2/Namespace;
    .locals 1

    .line 68
    sget-object v0, Lcom/rometools/rome/io/impl/RSS090Generator;->RDF_NS:Lorg/jdom2/Namespace;

    return-object v0
.end method

.method protected getTextInputLabel()Ljava/lang/String;
    .locals 1

    const-string v0, "textInput"

    return-object v0
.end method

.method protected populateChannel(Lcom/rometools/rome/feed/rss/Channel;Lorg/jdom2/Element;)V
    .locals 2

    .line 112
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Channel;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "title"

    .line 114
    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/RSS090Generator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 116
    :cond_0
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Channel;->getLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "link"

    .line 118
    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/RSS090Generator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 120
    :cond_1
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Channel;->getDescription()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "description"

    .line 122
    invoke-virtual {p0, v0, p1}, Lcom/rometools/rome/io/impl/RSS090Generator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    :cond_2
    return-void
.end method

.method protected populateFeed(Lcom/rometools/rome/feed/rss/Channel;Lorg/jdom2/Element;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/rometools/rome/io/impl/RSS090Generator;->addChannel(Lcom/rometools/rome/feed/rss/Channel;Lorg/jdom2/Element;)V

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/rometools/rome/io/impl/RSS090Generator;->addImage(Lcom/rometools/rome/feed/rss/Channel;Lorg/jdom2/Element;)V

    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/rometools/rome/io/impl/RSS090Generator;->addTextInput(Lcom/rometools/rome/feed/rss/Channel;Lorg/jdom2/Element;)V

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/rometools/rome/io/impl/RSS090Generator;->addItems(Lcom/rometools/rome/feed/rss/Channel;Lorg/jdom2/Element;)V

    .line 93
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Channel;->getForeignMarkup()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/rometools/rome/io/impl/RSS090Generator;->generateForeignMarkup(Lorg/jdom2/Element;Ljava/util/List;)V

    return-void
.end method

.method protected populateImage(Lcom/rometools/rome/feed/rss/Image;Lorg/jdom2/Element;)V
    .locals 2

    .line 159
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Image;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "title"

    .line 161
    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/RSS090Generator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 163
    :cond_0
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Image;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "url"

    .line 165
    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/RSS090Generator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 167
    :cond_1
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Image;->getLink()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "link"

    .line 169
    invoke-virtual {p0, v0, p1}, Lcom/rometools/rome/io/impl/RSS090Generator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    :cond_2
    return-void
.end method

.method protected populateItem(Lcom/rometools/rome/feed/rss/Item;Lorg/jdom2/Element;I)V
    .locals 1

    .line 224
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Item;->getTitle()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    const-string v0, "title"

    .line 226
    invoke-virtual {p0, v0, p3}, Lcom/rometools/rome/io/impl/RSS090Generator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 228
    :cond_0
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Item;->getLink()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    const-string v0, "link"

    .line 230
    invoke-virtual {p0, v0, p3}, Lcom/rometools/rome/io/impl/RSS090Generator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 232
    :cond_1
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Item;->getForeignMarkup()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/rometools/rome/io/impl/RSS090Generator;->generateForeignMarkup(Lorg/jdom2/Element;Ljava/util/List;)V

    return-void
.end method

.method protected populateTextInput(Lcom/rometools/rome/feed/rss/TextInput;Lorg/jdom2/Element;)V
    .locals 2

    .line 189
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/TextInput;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "title"

    .line 191
    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/RSS090Generator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 193
    :cond_0
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/TextInput;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "description"

    .line 195
    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/RSS090Generator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 197
    :cond_1
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/TextInput;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "name"

    .line 199
    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/RSS090Generator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 201
    :cond_2
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/TextInput;->getLink()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "link"

    .line 203
    invoke-virtual {p0, v0, p1}, Lcom/rometools/rome/io/impl/RSS090Generator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    :cond_3
    return-void
.end method
