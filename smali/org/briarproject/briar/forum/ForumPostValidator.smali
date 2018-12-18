.class Lorg/briarproject/briar/forum/ForumPostValidator;
.super Lorg/briarproject/bramble/api/client/BdfMessageValidator;
.source "ForumPostValidator.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/bramble/api/client/BdfMessageValidator;-><init>(Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;)V

    return-void
.end method


# virtual methods
.method protected validateMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/Group;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/client/BdfMessageContext;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/sync/InvalidMessageException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 49
    invoke-static {p3, v0}, Lorg/briarproject/bramble/util/ValidationUtils;->checkSize(Lorg/briarproject/bramble/api/data/BdfList;I)V

    const/4 v1, 0x0

    .line 52
    invoke-virtual {p3, v1}, Lorg/briarproject/bramble/api/data/BdfList;->getOptionalRaw(I)[B

    move-result-object v2

    const/16 v3, 0x20

    .line 53
    invoke-static {v2, v3}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength([BI)V

    const/4 v3, 0x1

    .line 56
    invoke-virtual {p3, v3}, Lorg/briarproject/bramble/api/data/BdfList;->getList(I)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v4

    .line 57
    iget-object v5, p0, Lorg/briarproject/briar/forum/ForumPostValidator;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v5, v4}, Lorg/briarproject/bramble/api/client/ClientHelper;->parseAndValidateAuthor(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v5

    const/4 v6, 0x2

    .line 60
    invoke-virtual {p3, v6}, Lorg/briarproject/bramble/api/data/BdfList;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x7c00

    .line 61
    invoke-static {v7, v1, v8}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength(Ljava/lang/String;II)V

    const/4 v8, 0x3

    .line 64
    invoke-virtual {p3, v8}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object p3

    const/16 v9, 0x40

    .line 65
    invoke-static {p3, v3, v9}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength([BII)V

    const/4 v9, 0x5

    .line 68
    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p2

    aput-object p2, v9, v1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v9, v3

    aput-object v2, v9, v6

    aput-object v4, v9, v8

    aput-object v7, v9, v0

    invoke-static {v9}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p2

    .line 71
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/forum/ForumPostValidator;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    sget-object v3, Lorg/briarproject/briar/api/forum/ForumPostFactory;->SIGNING_LABEL_POST:Ljava/lang/String;

    .line 72
    invoke-virtual {v5}, Lorg/briarproject/bramble/api/identity/Author;->getPublicKey()[B

    move-result-object v5

    .line 71
    invoke-interface {v0, p3, v3, p2, v5}, Lorg/briarproject/bramble/api/client/ClientHelper;->verifySignature([BLjava/lang/String;Lorg/briarproject/bramble/api/data/BdfList;[B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    new-instance p2, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {p2}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    .line 79
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    const-string v0, "timestamp"

    .line 80
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_0

    const-string p1, "parent"

    .line 82
    invoke-virtual {p2, p1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance p1, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {p1, v2}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    :cond_0
    const-string p1, "author"

    .line 85
    invoke-virtual {p2, p1, v4}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "read"

    .line 86
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance p1, Lorg/briarproject/bramble/api/client/BdfMessageContext;

    invoke-direct {p1, p2, p3}, Lorg/briarproject/bramble/api/client/BdfMessageContext;-><init>(Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/util/Collection;)V

    return-object p1

    :catch_0
    move-exception p1

    .line 74
    new-instance p2, Lorg/briarproject/bramble/api/sync/InvalidMessageException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/sync/InvalidMessageException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
