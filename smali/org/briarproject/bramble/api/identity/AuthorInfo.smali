.class public Lorg/briarproject/bramble/api/identity/AuthorInfo;
.super Ljava/lang/Object;
.source "AuthorInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final alias:Ljava/lang/String;

.field private final status:Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0}, Lorg/briarproject/bramble/api/identity/AuthorInfo;-><init>(Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/briarproject/bramble/api/identity/AuthorInfo;->status:Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    .line 26
    iput-object p2, p0, Lorg/briarproject/bramble/api/identity/AuthorInfo;->alias:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 51
    instance-of v0, p1, Lorg/briarproject/bramble/api/identity/AuthorInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 52
    :cond_0
    check-cast p1, Lorg/briarproject/bramble/api/identity/AuthorInfo;

    .line 53
    iget-object v0, p0, Lorg/briarproject/bramble/api/identity/AuthorInfo;->status:Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    iget-object v2, p1, Lorg/briarproject/bramble/api/identity/AuthorInfo;->status:Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lorg/briarproject/bramble/api/identity/AuthorInfo;->alias:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object p1, p1, Lorg/briarproject/bramble/api/identity/AuthorInfo;->alias:Ljava/lang/String;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/briarproject/bramble/api/identity/AuthorInfo;->alias:Ljava/lang/String;

    iget-object p1, p1, Lorg/briarproject/bramble/api/identity/AuthorInfo;->alias:Ljava/lang/String;

    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/briarproject/bramble/api/identity/AuthorInfo;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/briarproject/bramble/api/identity/AuthorInfo;->status:Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 44
    iget-object v0, p0, Lorg/briarproject/bramble/api/identity/AuthorInfo;->status:Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/identity/AuthorInfo$Status;->ordinal()I

    move-result v0

    .line 45
    iget-object v1, p0, Lorg/briarproject/bramble/api/identity/AuthorInfo;->alias:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/briarproject/bramble/api/identity/AuthorInfo;->alias:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method
