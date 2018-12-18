.class Lorg/briarproject/briar/privategroup/invitation/GroupInvitationValidator;
.super Lorg/briarproject/bramble/api/client/BdfMessageValidator;
.source "GroupInvitationValidator.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final messageEncoder:Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;

.field private final privateGroupFactory:Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/bramble/api/client/BdfMessageValidator;-><init>(Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;)V

    .line 50
    iput-object p4, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationValidator;->privateGroupFactory:Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;

    .line 51
    iput-object p5, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationValidator;->messageEncoder:Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;

    return-void
.end method

.method private validateAbortMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/client/BdfMessageContext;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 149
    invoke-static {p2, v0}, Lorg/briarproject/bramble/util/ValidationUtils;->checkSize(Lorg/briarproject/bramble/api/data/BdfList;I)V

    const/4 v0, 0x1

    .line 150
    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object p2

    const/16 v0, 0x20

    .line 151
    invoke-static {p2, v0}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength([BI)V

    .line 152
    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationValidator;->messageEncoder:Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;

    sget-object v2, Lorg/briarproject/briar/privategroup/invitation/MessageType;->ABORT:Lorg/briarproject/briar/privategroup/invitation/MessageType;

    new-instance v3, Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-direct {v3, p2}, Lorg/briarproject/bramble/api/sync/GroupId;-><init>([B)V

    .line 153
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 152
    invoke-interface/range {v1 .. v10}, Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;->encodeMetadata(Lorg/briarproject/briar/privategroup/invitation/MessageType;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZZ)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p1

    .line 155
    new-instance p2, Lorg/briarproject/bramble/api/client/BdfMessageContext;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/client/BdfMessageContext;-><init>(Lorg/briarproject/bramble/api/data/BdfDictionary;)V

    return-object p2
.end method

.method private validateInviteMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/client/BdfMessageContext;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x6

    .line 75
    invoke-static {v1, v2}, Lorg/briarproject/bramble/util/ValidationUtils;->checkSize(Lorg/briarproject/bramble/api/data/BdfList;I)V

    const/4 v2, 0x1

    .line 76
    invoke-virtual {v1, v2}, Lorg/briarproject/bramble/api/data/BdfList;->getList(I)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v3

    const/4 v4, 0x2

    .line 77
    invoke-virtual {v1, v4}, Lorg/briarproject/bramble/api/data/BdfList;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x64

    .line 78
    invoke-static {v5, v2, v6}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength(Ljava/lang/String;II)V

    const/4 v6, 0x3

    .line 79
    invoke-virtual {v1, v6}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v7

    const/16 v8, 0x20

    .line 80
    invoke-static {v7, v8}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength([BI)V

    const/4 v8, 0x4

    .line 81
    invoke-virtual {v1, v8}, Lorg/briarproject/bramble/api/data/BdfList;->getOptionalString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x7c00

    .line 82
    invoke-static {v8, v2, v9}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength(Ljava/lang/String;II)V

    const/4 v8, 0x5

    .line 83
    invoke-virtual {v1, v8}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v1

    const/16 v8, 0x40

    .line 84
    invoke-static {v1, v2, v8}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength([BII)V

    .line 87
    iget-object v8, v0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationValidator;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v8, v3}, Lorg/briarproject/bramble/api/client/ClientHelper;->parseAndValidateAuthor(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v3

    .line 88
    iget-object v8, v0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationValidator;->privateGroupFactory:Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;

    invoke-interface {v8, v5, v3, v7}, Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;->createPrivateGroup(Ljava/lang/String;Lorg/briarproject/bramble/api/identity/Author;[B)Lorg/briarproject/briar/api/privategroup/PrivateGroup;

    move-result-object v5

    .line 91
    new-array v6, v6, [Ljava/lang/Object;

    .line 92
    invoke-virtual/range {p1 .. p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 93
    invoke-virtual/range {p1 .. p1}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v7

    aput-object v7, v6, v2

    .line 94
    invoke-virtual {v5}, Lorg/briarproject/briar/api/privategroup/PrivateGroup;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    aput-object v2, v6, v4

    .line 91
    invoke-static {v6}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v2

    .line 97
    :try_start_0
    iget-object v4, v0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationValidator;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    sget-object v6, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationFactory;->SIGNING_LABEL_INVITE:Ljava/lang/String;

    .line 98
    invoke-virtual {v3}, Lorg/briarproject/bramble/api/identity/Author;->getPublicKey()[B

    move-result-object v3

    .line 97
    invoke-interface {v4, v1, v6, v2, v3}, Lorg/briarproject/bramble/api/client/ClientHelper;->verifySignature([BLjava/lang/String;Lorg/briarproject/bramble/api/data/BdfList;[B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    iget-object v7, v0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationValidator;->messageEncoder:Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;

    sget-object v8, Lorg/briarproject/briar/privategroup/invitation/MessageType;->INVITE:Lorg/briarproject/briar/privategroup/invitation/MessageType;

    .line 104
    invoke-virtual {v5}, Lorg/briarproject/briar/api/privategroup/PrivateGroup;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 103
    invoke-interface/range {v7 .. v16}, Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;->encodeMetadata(Lorg/briarproject/briar/privategroup/invitation/MessageType;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZZ)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v1

    .line 106
    new-instance v2, Lorg/briarproject/bramble/api/client/BdfMessageContext;

    invoke-direct {v2, v1}, Lorg/briarproject/bramble/api/client/BdfMessageContext;-><init>(Lorg/briarproject/bramble/api/data/BdfDictionary;)V

    return-object v2

    .line 100
    :catch_0
    new-instance v1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v1
.end method

.method private validateJoinMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/client/BdfMessageContext;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 111
    invoke-static {p2, v0}, Lorg/briarproject/bramble/util/ValidationUtils;->checkSize(Lorg/briarproject/bramble/api/data/BdfList;I)V

    const/4 v0, 0x1

    .line 112
    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v0

    const/16 v1, 0x20

    .line 113
    invoke-static {v0, v1}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength([BI)V

    const/4 v2, 0x2

    .line 114
    invoke-virtual {p2, v2}, Lorg/briarproject/bramble/api/data/BdfList;->getOptionalRaw(I)[B

    move-result-object p2

    .line 115
    invoke-static {p2, v1}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength([BI)V

    .line 116
    iget-object v2, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationValidator;->messageEncoder:Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;

    sget-object v3, Lorg/briarproject/briar/privategroup/invitation/MessageType;->JOIN:Lorg/briarproject/briar/privategroup/invitation/MessageType;

    new-instance v4, Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-direct {v4, v0}, Lorg/briarproject/bramble/api/sync/GroupId;-><init>([B)V

    .line 117
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 116
    invoke-interface/range {v2 .. v11}, Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;->encodeMetadata(Lorg/briarproject/briar/privategroup/invitation/MessageType;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZZ)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p1

    if-nez p2, :cond_0

    .line 120
    new-instance p2, Lorg/briarproject/bramble/api/client/BdfMessageContext;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/client/BdfMessageContext;-><init>(Lorg/briarproject/bramble/api/data/BdfDictionary;)V

    return-object p2

    .line 122
    :cond_0
    new-instance v0, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {v0, p2}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    .line 123
    new-instance p2, Lorg/briarproject/bramble/api/client/BdfMessageContext;

    .line 124
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lorg/briarproject/bramble/api/client/BdfMessageContext;-><init>(Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/util/Collection;)V

    return-object p2
.end method

.method private validateLeaveMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/client/BdfMessageContext;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 130
    invoke-static {p2, v0}, Lorg/briarproject/bramble/util/ValidationUtils;->checkSize(Lorg/briarproject/bramble/api/data/BdfList;I)V

    const/4 v0, 0x1

    .line 131
    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v0

    const/16 v1, 0x20

    .line 132
    invoke-static {v0, v1}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength([BI)V

    const/4 v2, 0x2

    .line 133
    invoke-virtual {p2, v2}, Lorg/briarproject/bramble/api/data/BdfList;->getOptionalRaw(I)[B

    move-result-object p2

    .line 134
    invoke-static {p2, v1}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength([BI)V

    .line 135
    iget-object v2, p0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationValidator;->messageEncoder:Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;

    sget-object v3, Lorg/briarproject/briar/privategroup/invitation/MessageType;->LEAVE:Lorg/briarproject/briar/privategroup/invitation/MessageType;

    new-instance v4, Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-direct {v4, v0}, Lorg/briarproject/bramble/api/sync/GroupId;-><init>([B)V

    .line 136
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 135
    invoke-interface/range {v2 .. v11}, Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;->encodeMetadata(Lorg/briarproject/briar/privategroup/invitation/MessageType;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZZ)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p1

    if-nez p2, :cond_0

    .line 139
    new-instance p2, Lorg/briarproject/bramble/api/client/BdfMessageContext;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/client/BdfMessageContext;-><init>(Lorg/briarproject/bramble/api/data/BdfDictionary;)V

    return-object p2

    .line 141
    :cond_0
    new-instance v0, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {v0, p2}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    .line 142
    new-instance p2, Lorg/briarproject/bramble/api/client/BdfMessageContext;

    .line 143
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lorg/briarproject/bramble/api/client/BdfMessageContext;-><init>(Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/util/Collection;)V

    return-object p2
.end method


# virtual methods
.method protected validateMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/Group;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/client/BdfMessageContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const/4 p2, 0x0

    .line 57
    invoke-virtual {p3, p2}, Lorg/briarproject/bramble/api/data/BdfList;->getLong(I)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->intValue()I

    move-result p2

    invoke-static {p2}, Lorg/briarproject/briar/privategroup/invitation/MessageType;->fromValue(I)Lorg/briarproject/briar/privategroup/invitation/MessageType;

    move-result-object p2

    .line 58
    sget-object v0, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationValidator$1;->$SwitchMap$org$briarproject$briar$privategroup$invitation$MessageType:[I

    invoke-virtual {p2}, Lorg/briarproject/briar/privategroup/invitation/MessageType;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    .line 68
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    .line 66
    :pswitch_0
    invoke-direct {p0, p1, p3}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationValidator;->validateAbortMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/client/BdfMessageContext;

    move-result-object p1

    return-object p1

    .line 64
    :pswitch_1
    invoke-direct {p0, p1, p3}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationValidator;->validateLeaveMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/client/BdfMessageContext;

    move-result-object p1

    return-object p1

    .line 62
    :pswitch_2
    invoke-direct {p0, p1, p3}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationValidator;->validateJoinMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/client/BdfMessageContext;

    move-result-object p1

    return-object p1

    .line 60
    :pswitch_3
    invoke-direct {p0, p1, p3}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationValidator;->validateInviteMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/client/BdfMessageContext;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
