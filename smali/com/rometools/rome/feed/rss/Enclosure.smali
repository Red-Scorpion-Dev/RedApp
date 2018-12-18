.class public Lcom/rometools/rome/feed/rss/Enclosure;
.super Ljava/lang/Object;
.source "Enclosure.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private length:J

.field private final objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/rometools/rome/feed/impl/ObjectBean;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/rometools/rome/feed/rss/Enclosure;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

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

    .line 48
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Enclosure;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 62
    instance-of v0, p1, Lcom/rometools/rome/feed/rss/Enclosure;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Enclosure;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/impl/ObjectBean;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getLength()J
    .locals 2

    .line 124
    iget-wide v0, p0, Lcom/rometools/rome/feed/rss/Enclosure;->length:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Enclosure;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Enclosure;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Enclosure;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->hashCode()I

    move-result v0

    return v0
.end method

.method public setLength(J)V
    .locals 0

    .line 135
    iput-wide p1, p0, Lcom/rometools/rome/feed/rss/Enclosure;->length:J

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Enclosure;->type:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Enclosure;->url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Enclosure;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
