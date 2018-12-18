.class public Lcom/rometools/rome/feed/synd/SyndContentImpl;
.super Ljava/lang/Object;
.source "SyndContentImpl.java"

# interfaces
.implements Lcom/rometools/rome/feed/synd/SyndContent;
.implements Ljava/io/Serializable;


# static fields
.field private static final COPY_FROM_HELPER:Lcom/rometools/rome/feed/impl/CopyFromHelper;


# instance fields
.field private mode:Ljava/lang/String;

.field private final objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

.field private type:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    .line 45
    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "value"

    .line 46
    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 50
    new-instance v2, Lcom/rometools/rome/feed/impl/CopyFromHelper;

    const-class v3, Lcom/rometools/rome/feed/synd/SyndContent;

    invoke-direct {v2, v3, v0, v1}, Lcom/rometools/rome/feed/impl/CopyFromHelper;-><init>(Ljava/lang/Class;Ljava/util/Map;Ljava/util/Map;)V

    sput-object v2, Lcom/rometools/rome/feed/synd/SyndContentImpl;->COPY_FROM_HELPER:Lcom/rometools/rome/feed/impl/CopyFromHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/rometools/rome/feed/impl/ObjectBean;

    const-class v1, Lcom/rometools/rome/feed/synd/SyndContent;

    invoke-direct {v0, v1, p0}, Lcom/rometools/rome/feed/impl/ObjectBean;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/rometools/rome/feed/synd/SyndContentImpl;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

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

    .line 67
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndContentImpl;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndContentImpl;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/impl/ObjectBean;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndContentImpl;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndContentImpl;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndContentImpl;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndContentImpl;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->hashCode()I

    move-result v0

    return v0
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/rometools/rome/feed/synd/SyndContentImpl;->mode:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/rometools/rome/feed/synd/SyndContentImpl;->type:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/rometools/rome/feed/synd/SyndContentImpl;->value:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndContentImpl;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
