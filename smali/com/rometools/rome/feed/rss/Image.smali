.class public Lcom/rometools/rome/feed/rss/Image;
.super Ljava/lang/Object;
.source "Image.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private description:Ljava/lang/String;

.field private height:Ljava/lang/Integer;

.field private link:Ljava/lang/String;

.field private final objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private width:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/rometools/rome/feed/rss/Image;->width:Ljava/lang/Integer;

    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/rometools/rome/feed/rss/Image;->height:Ljava/lang/Integer;

    .line 37
    new-instance v0, Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/rometools/rome/feed/impl/ObjectBean;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/rometools/rome/feed/rss/Image;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

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

    .line 50
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Image;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 64
    instance-of v0, p1, Lcom/rometools/rome/feed/rss/Image;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Image;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/impl/ObjectBean;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Image;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()Ljava/lang/Integer;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Image;->height:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Image;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Image;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Image;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()Ljava/lang/Integer;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Image;->width:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Image;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->hashCode()I

    move-result v0

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Image;->description:Ljava/lang/String;

    return-void
.end method

.method public setHeight(Ljava/lang/Integer;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Image;->height:Ljava/lang/Integer;

    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Image;->link:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Image;->title:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Image;->url:Ljava/lang/String;

    return-void
.end method

.method public setWidth(Ljava/lang/Integer;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Image;->width:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Image;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
