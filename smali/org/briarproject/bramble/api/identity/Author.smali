.class public Lorg/briarproject/bramble/api/identity/Author;
.super Ljava/lang/Object;
.source "Author.java"

# interfaces
.implements Lorg/briarproject/bramble/api/Nameable;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field public static final FORMAT_VERSION:I = 0x1


# instance fields
.field private final formatVersion:I

.field private final id:Lorg/briarproject/bramble/api/identity/AuthorId;

.field private final name:Ljava/lang/String;

.field private final publicKey:[B


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/identity/AuthorId;ILjava/lang/String;[B)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p3}, Lorg/briarproject/bramble/util/StringUtils;->toUtf8(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_1

    const/16 v1, 0x32

    if-gt v0, v1, :cond_1

    .line 34
    array-length v0, p4

    if-eqz v0, :cond_0

    array-length v0, p4

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    .line 36
    iput-object p1, p0, Lorg/briarproject/bramble/api/identity/Author;->id:Lorg/briarproject/bramble/api/identity/AuthorId;

    .line 37
    iput p2, p0, Lorg/briarproject/bramble/api/identity/Author;->formatVersion:I

    .line 38
    iput-object p3, p0, Lorg/briarproject/bramble/api/identity/Author;->name:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lorg/briarproject/bramble/api/identity/Author;->publicKey:[B

    return-void

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 33
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 77
    instance-of v0, p1, Lorg/briarproject/bramble/api/identity/Author;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/briarproject/bramble/api/identity/Author;->id:Lorg/briarproject/bramble/api/identity/AuthorId;

    check-cast p1, Lorg/briarproject/bramble/api/identity/Author;

    iget-object p1, p1, Lorg/briarproject/bramble/api/identity/Author;->id:Lorg/briarproject/bramble/api/identity/AuthorId;

    invoke-virtual {v0, p1}, Lorg/briarproject/bramble/api/identity/AuthorId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getFormatVersion()I
    .locals 1

    .line 53
    iget v0, p0, Lorg/briarproject/bramble/api/identity/Author;->formatVersion:I

    return v0
.end method

.method public getId()Lorg/briarproject/bramble/api/identity/AuthorId;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/briarproject/bramble/api/identity/Author;->id:Lorg/briarproject/bramble/api/identity/AuthorId;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/briarproject/bramble/api/identity/Author;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicKey()[B
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/briarproject/bramble/api/identity/Author;->publicKey:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/briarproject/bramble/api/identity/Author;->id:Lorg/briarproject/bramble/api/identity/AuthorId;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/identity/AuthorId;->hashCode()I

    move-result v0

    return v0
.end method
