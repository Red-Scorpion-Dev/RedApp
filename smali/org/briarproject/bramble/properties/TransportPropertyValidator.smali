.class Lorg/briarproject/bramble/properties/TransportPropertyValidator;
.super Lorg/briarproject/bramble/api/client/BdfMessageValidator;
.source "TransportPropertyValidator.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/bramble/api/client/BdfMessageValidator;-><init>(Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;)V

    return-void
.end method


# virtual methods
.method protected validateMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/Group;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/client/BdfMessageContext;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const/4 p1, 0x3

    .line 34
    invoke-static {p3, p1}, Lorg/briarproject/bramble/util/ValidationUtils;->checkSize(Lorg/briarproject/bramble/api/data/BdfList;I)V

    const/4 p1, 0x0

    .line 36
    invoke-virtual {p3, p1}, Lorg/briarproject/bramble/api/data/BdfList;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 37
    sget v0, Lorg/briarproject/bramble/api/plugin/TransportId;->MAX_TRANSPORT_ID_LENGTH:I

    const/4 v1, 0x1

    invoke-static {p2, v1, v0}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength(Ljava/lang/String;II)V

    .line 39
    invoke-virtual {p3, v1}, Lorg/briarproject/bramble/api/data/BdfList;->getLong(I)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v2, 0x2

    .line 42
    invoke-virtual {p3, v2}, Lorg/briarproject/bramble/api/data/BdfList;->getDictionary(I)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p3

    .line 43
    iget-object v2, p0, Lorg/briarproject/bramble/properties/TransportPropertyValidator;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v2, p3}, Lorg/briarproject/bramble/api/client/ClientHelper;->parseAndValidateTransportProperties(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/bramble/api/properties/TransportProperties;

    .line 45
    new-instance p3, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {p3}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    const-string v2, "transportId"

    .line 46
    invoke-virtual {p3, v2, p2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "version"

    .line 47
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "local"

    .line 48
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance p1, Lorg/briarproject/bramble/api/client/BdfMessageContext;

    invoke-direct {p1, p3}, Lorg/briarproject/bramble/api/client/BdfMessageContext;-><init>(Lorg/briarproject/bramble/api/data/BdfDictionary;)V

    return-object p1

    .line 40
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
.end method
