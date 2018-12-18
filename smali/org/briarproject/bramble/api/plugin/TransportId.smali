.class public Lorg/briarproject/bramble/api/plugin/TransportId;
.super Ljava/lang/Object;
.source "TransportId.java"


# static fields
.field public static MAX_TRANSPORT_ID_LENGTH:I = 0x64


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {p1}, Lorg/briarproject/bramble/util/StringUtils;->toUtf8(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 20
    sget v1, Lorg/briarproject/bramble/api/plugin/TransportId;->MAX_TRANSPORT_ID_LENGTH:I

    if-gt v0, v1, :cond_0

    .line 22
    iput-object p1, p0, Lorg/briarproject/bramble/api/plugin/TransportId;->id:Ljava/lang/String;

    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 31
    instance-of v0, p1, Lorg/briarproject/bramble/api/plugin/TransportId;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/briarproject/bramble/api/plugin/TransportId;->id:Ljava/lang/String;

    check-cast p1, Lorg/briarproject/bramble/api/plugin/TransportId;

    iget-object p1, p1, Lorg/briarproject/bramble/api/plugin/TransportId;->id:Ljava/lang/String;

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

    .line 26
    iget-object v0, p0, Lorg/briarproject/bramble/api/plugin/TransportId;->id:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/briarproject/bramble/api/plugin/TransportId;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/briarproject/bramble/api/plugin/TransportId;->id:Ljava/lang/String;

    return-object v0
.end method
