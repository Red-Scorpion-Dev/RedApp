.class public Lorg/briarproject/bramble/api/identity/LocalAuthor;
.super Lorg/briarproject/bramble/api/identity/Author;
.source "LocalAuthor.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final created:J

.field private final privateKey:[B


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/identity/AuthorId;ILjava/lang/String;[B[BJ)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/briarproject/bramble/api/identity/Author;-><init>(Lorg/briarproject/bramble/api/identity/AuthorId;ILjava/lang/String;[B)V

    .line 20
    iput-object p5, p0, Lorg/briarproject/bramble/api/identity/LocalAuthor;->privateKey:[B

    .line 21
    iput-wide p6, p0, Lorg/briarproject/bramble/api/identity/LocalAuthor;->created:J

    return-void
.end method


# virtual methods
.method public getPrivateKey()[B
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/briarproject/bramble/api/identity/LocalAuthor;->privateKey:[B

    return-object v0
.end method

.method public getTimeCreated()J
    .locals 2

    .line 36
    iget-wide v0, p0, Lorg/briarproject/bramble/api/identity/LocalAuthor;->created:J

    return-wide v0
.end method
