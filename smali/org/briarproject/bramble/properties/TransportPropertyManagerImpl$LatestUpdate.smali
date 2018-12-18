.class Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl$LatestUpdate;
.super Ljava/lang/Object;
.source "TransportPropertyManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LatestUpdate"
.end annotation


# instance fields
.field private final messageId:Lorg/briarproject/bramble/api/sync/MessageId;

.field private final version:J


# direct methods
.method private constructor <init>(Lorg/briarproject/bramble/api/sync/MessageId;J)V
    .locals 0

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    iput-object p1, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl$LatestUpdate;->messageId:Lorg/briarproject/bramble/api/sync/MessageId;

    .line 342
    iput-wide p2, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl$LatestUpdate;->version:J

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/api/sync/MessageId;JLorg/briarproject/bramble/properties/TransportPropertyManagerImpl$1;)V
    .locals 0

    .line 335
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl$LatestUpdate;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;J)V

    return-void
.end method

.method static synthetic access$000(Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl$LatestUpdate;)J
    .locals 2

    .line 335
    iget-wide v0, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl$LatestUpdate;->version:J

    return-wide v0
.end method

.method static synthetic access$100(Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl$LatestUpdate;)Lorg/briarproject/bramble/api/sync/MessageId;
    .locals 0

    .line 335
    iget-object p0, p0, Lorg/briarproject/bramble/properties/TransportPropertyManagerImpl$LatestUpdate;->messageId:Lorg/briarproject/bramble/api/sync/MessageId;

    return-object p0
.end method
