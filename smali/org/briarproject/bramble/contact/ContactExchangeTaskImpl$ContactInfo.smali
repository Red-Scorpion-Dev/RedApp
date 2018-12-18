.class Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl$ContactInfo;
.super Ljava/lang/Object;
.source "ContactExchangeTaskImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactInfo"
.end annotation


# instance fields
.field private final author:Lorg/briarproject/bramble/api/identity/Author;

.field private final properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            "Lorg/briarproject/bramble/api/properties/TransportProperties;",
            ">;"
        }
    .end annotation
.end field

.field private final signature:[B

.field private final timestamp:J


# direct methods
.method private constructor <init>(Lorg/briarproject/bramble/api/identity/Author;Ljava/util/Map;[BJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/identity/Author;",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            "Lorg/briarproject/bramble/api/properties/TransportProperties;",
            ">;[BJ)V"
        }
    .end annotation

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput-object p1, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl$ContactInfo;->author:Lorg/briarproject/bramble/api/identity/Author;

    .line 321
    iput-object p2, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl$ContactInfo;->properties:Ljava/util/Map;

    .line 322
    iput-object p3, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl$ContactInfo;->signature:[B

    .line 323
    iput-wide p4, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl$ContactInfo;->timestamp:J

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/api/identity/Author;Ljava/util/Map;[BJLorg/briarproject/bramble/contact/ContactExchangeTaskImpl$1;)V
    .locals 0

    .line 310
    invoke-direct/range {p0 .. p5}, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl$ContactInfo;-><init>(Lorg/briarproject/bramble/api/identity/Author;Ljava/util/Map;[BJ)V

    return-void
.end method

.method static synthetic access$000(Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl$ContactInfo;)Lorg/briarproject/bramble/api/identity/Author;
    .locals 0

    .line 310
    iget-object p0, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl$ContactInfo;->author:Lorg/briarproject/bramble/api/identity/Author;

    return-object p0
.end method

.method static synthetic access$100(Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl$ContactInfo;)[B
    .locals 0

    .line 310
    iget-object p0, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl$ContactInfo;->signature:[B

    return-object p0
.end method

.method static synthetic access$200(Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl$ContactInfo;)J
    .locals 2

    .line 310
    iget-wide v0, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl$ContactInfo;->timestamp:J

    return-wide v0
.end method

.method static synthetic access$300(Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl$ContactInfo;)Ljava/util/Map;
    .locals 0

    .line 310
    iget-object p0, p0, Lorg/briarproject/bramble/contact/ContactExchangeTaskImpl$ContactInfo;->properties:Ljava/util/Map;

    return-object p0
.end method
