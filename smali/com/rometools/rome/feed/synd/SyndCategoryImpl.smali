.class public Lcom/rometools/rome/feed/synd/SyndCategoryImpl;
.super Ljava/lang/Object;
.source "SyndCategoryImpl.java"

# interfaces
.implements Lcom/rometools/rome/feed/synd/SyndCategory;
.implements Ljava/io/Serializable;


# static fields
.field private static final COPY_FROM_HELPER:Lcom/rometools/rome/feed/impl/CopyFromHelper;


# instance fields
.field private final objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

.field private final subject:Lcom/rometools/rome/feed/module/DCSubject;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "name"

    .line 45
    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "taxonomyUri"

    .line 46
    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 48
    new-instance v2, Lcom/rometools/rome/feed/impl/CopyFromHelper;

    const-class v3, Lcom/rometools/rome/feed/synd/SyndCategory;

    invoke-direct {v2, v3, v0, v1}, Lcom/rometools/rome/feed/impl/CopyFromHelper;-><init>(Ljava/lang/Class;Ljava/util/Map;Ljava/util/Map;)V

    sput-object v2, Lcom/rometools/rome/feed/synd/SyndCategoryImpl;->COPY_FROM_HELPER:Lcom/rometools/rome/feed/impl/CopyFromHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 131
    new-instance v0, Lcom/rometools/rome/feed/module/DCSubjectImpl;

    invoke-direct {v0}, Lcom/rometools/rome/feed/module/DCSubjectImpl;-><init>()V

    invoke-direct {p0, v0}, Lcom/rometools/rome/feed/synd/SyndCategoryImpl;-><init>(Lcom/rometools/rome/feed/module/DCSubject;)V

    return-void
.end method

.method constructor <init>(Lcom/rometools/rome/feed/module/DCSubject;)V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/rometools/rome/feed/impl/ObjectBean;

    const-class v1, Lcom/rometools/rome/feed/synd/SyndCategory;

    invoke-direct {v0, v1, p0}, Lcom/rometools/rome/feed/impl/ObjectBean;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/rometools/rome/feed/synd/SyndCategoryImpl;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    .line 60
    iput-object p1, p0, Lcom/rometools/rome/feed/synd/SyndCategoryImpl;->subject:Lcom/rometools/rome/feed/module/DCSubject;

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

    .line 73
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndCategoryImpl;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 87
    instance-of v0, p1, Lcom/rometools/rome/feed/synd/SyndCategoryImpl;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndCategoryImpl;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/impl/ObjectBean;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndCategoryImpl;->subject:Lcom/rometools/rome/feed/module/DCSubject;

    invoke-interface {v0}, Lcom/rometools/rome/feed/module/DCSubject;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSubject()Lcom/rometools/rome/feed/module/DCSubject;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndCategoryImpl;->subject:Lcom/rometools/rome/feed/module/DCSubject;

    return-object v0
.end method

.method public getTaxonomyUri()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndCategoryImpl;->subject:Lcom/rometools/rome/feed/module/DCSubject;

    invoke-interface {v0}, Lcom/rometools/rome/feed/module/DCSubject;->getTaxonomyUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndCategoryImpl;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->hashCode()I

    move-result v0

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndCategoryImpl;->subject:Lcom/rometools/rome/feed/module/DCSubject;

    invoke-interface {v0, p1}, Lcom/rometools/rome/feed/module/DCSubject;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setTaxonomyUri(Ljava/lang/String;)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndCategoryImpl;->subject:Lcom/rometools/rome/feed/module/DCSubject;

    invoke-interface {v0, p1}, Lcom/rometools/rome/feed/module/DCSubject;->setTaxonomyUri(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndCategoryImpl;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
