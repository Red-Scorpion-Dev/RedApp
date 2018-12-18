.class public Lcom/rometools/rome/feed/synd/SyndImageImpl;
.super Ljava/lang/Object;
.source "SyndImageImpl.java"

# interfaces
.implements Lcom/rometools/rome/feed/synd/SyndImage;
.implements Ljava/io/Serializable;


# static fields
.field private static final COPY_FROM_HELPER:Lcom/rometools/rome/feed/impl/CopyFromHelper;


# instance fields
.field private description:Ljava/lang/String;

.field private height:Ljava/lang/Integer;

.field private link:Ljava/lang/String;

.field private final objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private width:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "title"

    .line 48
    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "url"

    .line 49
    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "link"

    .line 50
    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "width"

    .line 51
    const-class v2, Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "height"

    .line 52
    const-class v2, Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "description"

    .line 53
    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 57
    new-instance v2, Lcom/rometools/rome/feed/impl/CopyFromHelper;

    const-class v3, Lcom/rometools/rome/feed/synd/SyndImage;

    invoke-direct {v2, v3, v0, v1}, Lcom/rometools/rome/feed/impl/CopyFromHelper;-><init>(Ljava/lang/Class;Ljava/util/Map;Ljava/util/Map;)V

    sput-object v2, Lcom/rometools/rome/feed/synd/SyndImageImpl;->COPY_FROM_HELPER:Lcom/rometools/rome/feed/impl/CopyFromHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/rometools/rome/feed/impl/ObjectBean;

    const-class v1, Lcom/rometools/rome/feed/synd/SyndImage;

    invoke-direct {v0, v1, p0}, Lcom/rometools/rome/feed/impl/ObjectBean;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/rometools/rome/feed/synd/SyndImageImpl;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndImageImpl;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndImageImpl;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/impl/ObjectBean;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndImageImpl;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()Ljava/lang/Integer;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndImageImpl;->height:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndImageImpl;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndImageImpl;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndImageImpl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()Ljava/lang/Integer;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndImageImpl;->width:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndImageImpl;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->hashCode()I

    move-result v0

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/rometools/rome/feed/synd/SyndImageImpl;->description:Ljava/lang/String;

    return-void
.end method

.method public setHeight(Ljava/lang/Integer;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/rometools/rome/feed/synd/SyndImageImpl;->height:Ljava/lang/Integer;

    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/rometools/rome/feed/synd/SyndImageImpl;->link:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/rometools/rome/feed/synd/SyndImageImpl;->title:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/rometools/rome/feed/synd/SyndImageImpl;->url:Ljava/lang/String;

    return-void
.end method

.method public setWidth(Ljava/lang/Integer;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/rometools/rome/feed/synd/SyndImageImpl;->width:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndImageImpl;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
