.class Lorg/briarproject/briar/feed/NoDns;
.super Ljava/lang/Object;
.source "NoDns.java"

# interfaces
.implements Lokhttp3/Dns;


# static fields
.field private static final UNSPECIFIED_ADDRESS:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 14
    new-array v0, v0, [B

    sput-object v0, Lorg/briarproject/briar/feed/NoDns;->UNSPECIFIED_ADDRESS:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 23
    sget-object v0, Lorg/briarproject/briar/feed/NoDns;->UNSPECIFIED_ADDRESS:[B

    .line 24
    invoke-static {p1, v0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object p1

    .line 25
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
