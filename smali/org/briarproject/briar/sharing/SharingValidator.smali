.class abstract Lorg/briarproject/briar/sharing/SharingValidator;
.super Lorg/briarproject/bramble/api/client/BdfMessageValidator;
.source "SharingValidator.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final messageEncoder:Lorg/briarproject/briar/sharing/MessageEncoder;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/sharing/MessageEncoder;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;)V
    .locals 0

    .line 35
    invoke-direct {p0, p2, p3, p4}, Lorg/briarproject/bramble/api/client/BdfMessageValidator;-><init>(Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;)V

    .line 36
    iput-object p1, p0, Lorg/briarproject/briar/sharing/SharingValidator;->messageEncoder:Lorg/briarproject/briar/sharing/MessageEncoder;

    return-void
.end method

.method private validateInviteMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/client/BdfMessageContext;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 58
    invoke-static {p2, v0}, Lorg/briarproject/bramble/util/ValidationUtils;->checkSize(Lorg/briarproject/bramble/api/data/BdfList;I)V

    const/4 v0, 0x1

    .line 59
    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getOptionalRaw(I)[B

    move-result-object v1

    const/16 v2, 0x20

    .line 60
    invoke-static {v1, v2}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength([BI)V

    const/4 v2, 0x2

    .line 61
    invoke-virtual {p2, v2}, Lorg/briarproject/bramble/api/data/BdfList;->getList(I)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v2

    .line 62
    invoke-virtual {p0, v2}, Lorg/briarproject/briar/sharing/SharingValidator;->validateDescriptor(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v5

    const/4 v2, 0x3

    .line 63
    invoke-virtual {p2, v2}, Lorg/briarproject/bramble/api/data/BdfList;->getOptionalString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v2, 0x7c00

    .line 64
    invoke-static {p2, v0, v2}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength(Ljava/lang/String;II)V

    .line 66
    iget-object v3, p0, Lorg/briarproject/briar/sharing/SharingValidator;->messageEncoder:Lorg/briarproject/briar/sharing/MessageEncoder;

    sget-object v4, Lorg/briarproject/briar/sharing/MessageType;->INVITE:Lorg/briarproject/briar/sharing/MessageType;

    .line 67
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v3 .. v12}, Lorg/briarproject/briar/sharing/MessageEncoder;->encodeMetadata(Lorg/briarproject/briar/sharing/MessageType;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZZ)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p1

    if-nez v1, :cond_0

    .line 70
    new-instance p2, Lorg/briarproject/bramble/api/client/BdfMessageContext;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/client/BdfMessageContext;-><init>(Lorg/briarproject/bramble/api/data/BdfDictionary;)V

    return-object p2

    .line 72
    :cond_0
    new-instance p2, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {p2, v1}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    .line 73
    new-instance v0, Lorg/briarproject/bramble/api/client/BdfMessageContext;

    .line 74
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lorg/briarproject/bramble/api/client/BdfMessageContext;-><init>(Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/util/Collection;)V

    return-object v0
.end method

.method private validateNonInviteMessage(Lorg/briarproject/briar/sharing/MessageType;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/client/BdfMessageContext;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 83
    invoke-static {p3, v0}, Lorg/briarproject/bramble/util/ValidationUtils;->checkSize(Lorg/briarproject/bramble/api/data/BdfList;I)V

    const/4 v0, 0x1

    .line 84
    invoke-virtual {p3, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v0

    const/16 v1, 0x20

    .line 85
    invoke-static {v0, v1}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength([BI)V

    const/4 v2, 0x2

    .line 86
    invoke-virtual {p3, v2}, Lorg/briarproject/bramble/api/data/BdfList;->getOptionalRaw(I)[B

    move-result-object p3

    .line 87
    invoke-static {p3, v1}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength([BI)V

    .line 89
    iget-object v2, p0, Lorg/briarproject/briar/sharing/SharingValidator;->messageEncoder:Lorg/briarproject/briar/sharing/MessageEncoder;

    new-instance v4, Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-direct {v4, v0}, Lorg/briarproject/bramble/api/sync/GroupId;-><init>([B)V

    .line 91
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, p1

    .line 90
    invoke-interface/range {v2 .. v11}, Lorg/briarproject/briar/sharing/MessageEncoder;->encodeMetadata(Lorg/briarproject/briar/sharing/MessageType;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZZ)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p1

    if-nez p3, :cond_0

    .line 93
    new-instance p2, Lorg/briarproject/bramble/api/client/BdfMessageContext;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/client/BdfMessageContext;-><init>(Lorg/briarproject/bramble/api/data/BdfDictionary;)V

    return-object p2

    .line 95
    :cond_0
    new-instance p2, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {p2, p3}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    .line 96
    new-instance p3, Lorg/briarproject/bramble/api/client/BdfMessageContext;

    .line 97
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p3, p1, p2}, Lorg/briarproject/bramble/api/client/BdfMessageContext;-><init>(Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/util/Collection;)V

    return-object p3
.end method


# virtual methods
.method protected abstract validateDescriptor(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/sync/GroupId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method

.method protected validateMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/Group;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/client/BdfMessageContext;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const/4 p2, 0x0

    .line 42
    invoke-virtual {p3, p2}, Lorg/briarproject/bramble/api/data/BdfList;->getLong(I)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->intValue()I

    move-result p2

    invoke-static {p2}, Lorg/briarproject/briar/sharing/MessageType;->fromValue(I)Lorg/briarproject/briar/sharing/MessageType;

    move-result-object p2

    .line 43
    sget-object v0, Lorg/briarproject/briar/sharing/SharingValidator$1;->$SwitchMap$org$briarproject$briar$sharing$MessageType:[I

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/MessageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 52
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    .line 50
    :pswitch_0
    invoke-direct {p0, p2, p1, p3}, Lorg/briarproject/briar/sharing/SharingValidator;->validateNonInviteMessage(Lorg/briarproject/briar/sharing/MessageType;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/client/BdfMessageContext;

    move-result-object p1

    return-object p1

    .line 45
    :pswitch_1
    invoke-direct {p0, p1, p3}, Lorg/briarproject/briar/sharing/SharingValidator;->validateInviteMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/client/BdfMessageContext;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
