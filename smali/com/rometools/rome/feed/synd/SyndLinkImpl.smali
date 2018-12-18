.class public Lcom/rometools/rome/feed/synd/SyndLinkImpl;
.super Ljava/lang/Object;
.source "SyndLinkImpl.java"

# interfaces
.implements Lcom/rometools/rome/feed/synd/SyndLink;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private href:Ljava/lang/String;

.field private hreflang:Ljava/lang/String;

.field private length:J

.field private final objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

.field private rel:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/rometools/rome/feed/impl/ObjectBean;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/rometools/rome/feed/synd/SyndLinkImpl;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

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

    .line 53
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndLinkImpl;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 67
    instance-of v0, p1, Lcom/rometools/rome/feed/synd/SyndLinkImpl;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndLinkImpl;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/impl/ObjectBean;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndLinkImpl;->href:Ljava/lang/String;

    return-object v0
.end method

.method public getHreflang()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndLinkImpl;->hreflang:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()J
    .locals 2

    .line 226
    iget-wide v0, p0, Lcom/rometools/rome/feed/synd/SyndLinkImpl;->length:J

    return-wide v0
.end method

.method public getRel()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndLinkImpl;->rel:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndLinkImpl;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndLinkImpl;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndLinkImpl;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->hashCode()I

    move-result v0

    return v0
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/rometools/rome/feed/synd/SyndLinkImpl;->href:Ljava/lang/String;

    return-void
.end method

.method public setHreflang(Ljava/lang/String;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/rometools/rome/feed/synd/SyndLinkImpl;->hreflang:Ljava/lang/String;

    return-void
.end method

.method public setLength(J)V
    .locals 0

    .line 237
    iput-wide p1, p0, Lcom/rometools/rome/feed/synd/SyndLinkImpl;->length:J

    return-void
.end method

.method public setRel(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/rometools/rome/feed/synd/SyndLinkImpl;->rel:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/rometools/rome/feed/synd/SyndLinkImpl;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/rometools/rome/feed/synd/SyndLinkImpl;->type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndLinkImpl;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
