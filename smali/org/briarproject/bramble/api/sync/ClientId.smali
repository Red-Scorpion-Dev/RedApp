.class public Lorg/briarproject/bramble/api/sync/ClientId;
.super Ljava/lang/Object;
.source "ClientId.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/briarproject/bramble/api/sync/ClientId;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field public static MAX_CLIENT_ID_LENGTH:I = 0x64


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {p1}, Lorg/briarproject/bramble/util/StringUtils;->toUtf8(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 25
    sget v1, Lorg/briarproject/bramble/api/sync/ClientId;->MAX_CLIENT_ID_LENGTH:I

    if-gt v0, v1, :cond_0

    .line 27
    iput-object p1, p0, Lorg/briarproject/bramble/api/sync/ClientId;->id:Ljava/lang/String;

    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 12
    check-cast p1, Lorg/briarproject/bramble/api/sync/ClientId;

    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/sync/ClientId;->compareTo(Lorg/briarproject/bramble/api/sync/ClientId;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/briarproject/bramble/api/sync/ClientId;)I
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/briarproject/bramble/api/sync/ClientId;->id:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/ClientId;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 41
    instance-of v0, p1, Lorg/briarproject/bramble/api/sync/ClientId;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/briarproject/bramble/api/sync/ClientId;->id:Ljava/lang/String;

    check-cast p1, Lorg/briarproject/bramble/api/sync/ClientId;

    iget-object p1, p1, Lorg/briarproject/bramble/api/sync/ClientId;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/briarproject/bramble/api/sync/ClientId;->id:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/briarproject/bramble/api/sync/ClientId;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/briarproject/bramble/api/sync/ClientId;->id:Ljava/lang/String;

    return-object v0
.end method
