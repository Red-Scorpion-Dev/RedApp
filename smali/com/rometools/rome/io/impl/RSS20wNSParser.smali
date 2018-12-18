.class public Lcom/rometools/rome/io/impl/RSS20wNSParser;
.super Lcom/rometools/rome/io/impl/RSS20Parser;
.source "RSS20wNSParser.java"


# static fields
.field private static RSS20_URI:Ljava/lang/String; = "http://backend.userland.com/rss2"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "rss_2.0wNS"

    .line 43
    invoke-direct {p0, v0}, Lcom/rometools/rome/io/impl/RSS20wNSParser;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/rometools/rome/io/impl/RSS20Parser;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getRSSNamespace()Lorg/jdom2/Namespace;
    .locals 1

    .line 59
    sget-object v0, Lcom/rometools/rome/io/impl/RSS20wNSParser;->RSS20_URI:Ljava/lang/String;

    invoke-static {v0}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v0

    return-object v0
.end method

.method public isMyType(Lorg/jdom2/Document;)Z
    .locals 2

    .line 52
    invoke-virtual {p1}, Lorg/jdom2/Document;->getRootElement()Lorg/jdom2/Element;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lorg/jdom2/Element;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS20wNSParser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jdom2/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/rometools/rome/io/impl/RSS20Parser;->isMyType(Lorg/jdom2/Document;)Z

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
    .locals 0

    .line 69
    invoke-super {p0, p1, p2}, Lcom/rometools/rome/io/impl/RSS20Parser;->parseChannel(Lorg/jdom2/Element;Ljava/util/Locale;)Lcom/rometools/rome/feed/WireFeed;

    move-result-object p1

    const-string p2, "rss_2.0"

    .line 70
    invoke-virtual {p1, p2}, Lcom/rometools/rome/feed/WireFeed;->setFeedType(Ljava/lang/String;)V

    return-object p1
.end method
