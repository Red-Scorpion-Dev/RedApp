.class public Lorg/briarproject/bramble/api/properties/TransportProperties;
.super Lorg/briarproject/bramble/api/StringMap;
.source "TransportProperties.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lorg/briarproject/bramble/api/StringMap;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/api/StringMap;-><init>(Ljava/util/Map;)V

    return-void
.end method
