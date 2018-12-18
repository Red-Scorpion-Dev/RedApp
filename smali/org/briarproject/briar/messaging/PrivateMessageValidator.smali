.class Lorg/briarproject/briar/messaging/PrivateMessageValidator;
.super Lorg/briarproject/bramble/api/client/BdfMessageValidator;
.source "PrivateMessageValidator.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/bramble/api/client/BdfMessageValidator;-><init>(Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;)V

    return-void
.end method


# virtual methods
.method protected validateMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/Group;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/client/BdfMessageContext;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const/4 p2, 0x1

    .line 35
    invoke-static {p3, p2}, Lorg/briarproject/bramble/util/ValidationUtils;->checkSize(Lorg/briarproject/bramble/api/data/BdfList;I)V

    const/4 p2, 0x0

    .line 36
    invoke-virtual {p3, p2}, Lorg/briarproject/bramble/api/data/BdfList;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/16 v0, 0x7c00

    .line 37
    invoke-static {p3, p2, v0}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength(Ljava/lang/String;II)V

    .line 39
    new-instance p3, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {p3}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    const-string v0, "timestamp"

    .line 40
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "local"

    .line 41
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "read"

    .line 42
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance p1, Lorg/briarproject/bramble/api/client/BdfMessageContext;

    invoke-direct {p1, p3}, Lorg/briarproject/bramble/api/client/BdfMessageContext;-><init>(Lorg/briarproject/bramble/api/data/BdfDictionary;)V

    return-object p1
.end method
