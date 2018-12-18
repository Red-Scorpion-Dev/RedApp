.class Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$TagContext;
.super Ljava/lang/Object;
.source "TransportKeyManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TagContext"
.end annotation


# instance fields
.field private final contactId:Lorg/briarproject/bramble/api/contact/ContactId;

.field private final inKeys:Lorg/briarproject/bramble/transport/MutableIncomingKeys;

.field private final keySetId:Lorg/briarproject/bramble/api/transport/KeySetId;

.field private final streamNumber:J


# direct methods
.method private constructor <init>(Lorg/briarproject/bramble/api/transport/KeySetId;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/transport/MutableIncomingKeys;J)V
    .locals 0

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    iput-object p1, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$TagContext;->keySetId:Lorg/briarproject/bramble/api/transport/KeySetId;

    .line 357
    iput-object p2, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$TagContext;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    .line 358
    iput-object p3, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$TagContext;->inKeys:Lorg/briarproject/bramble/transport/MutableIncomingKeys;

    .line 359
    iput-wide p4, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$TagContext;->streamNumber:J

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/api/transport/KeySetId;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/transport/MutableIncomingKeys;JLorg/briarproject/bramble/transport/TransportKeyManagerImpl$1;)V
    .locals 0

    .line 347
    invoke-direct/range {p0 .. p5}, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$TagContext;-><init>(Lorg/briarproject/bramble/api/transport/KeySetId;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/transport/MutableIncomingKeys;J)V

    return-void
.end method

.method static synthetic access$400(Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$TagContext;)Lorg/briarproject/bramble/api/contact/ContactId;
    .locals 0

    .line 347
    iget-object p0, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$TagContext;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    return-object p0
.end method

.method static synthetic access$500(Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$TagContext;)Lorg/briarproject/bramble/transport/MutableIncomingKeys;
    .locals 0

    .line 347
    iget-object p0, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$TagContext;->inKeys:Lorg/briarproject/bramble/transport/MutableIncomingKeys;

    return-object p0
.end method

.method static synthetic access$600(Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$TagContext;)J
    .locals 2

    .line 347
    iget-wide v0, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$TagContext;->streamNumber:J

    return-wide v0
.end method

.method static synthetic access$700(Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$TagContext;)Lorg/briarproject/bramble/api/transport/KeySetId;
    .locals 0

    .line 347
    iget-object p0, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$TagContext;->keySetId:Lorg/briarproject/bramble/api/transport/KeySetId;

    return-object p0
.end method
