.class Lorg/briarproject/briar/privategroup/GroupMessageValidator;
.super Lorg/briarproject/bramble/api/client/BdfMessageValidator;
.source "GroupMessageValidator.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final groupInvitationFactory:Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationFactory;

.field private final privateGroupFactory:Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationFactory;)V
    .locals 0

    .line 54
    invoke-direct {p0, p2, p3, p4}, Lorg/briarproject/bramble/api/client/BdfMessageValidator;-><init>(Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;)V

    .line 55
    iput-object p1, p0, Lorg/briarproject/briar/privategroup/GroupMessageValidator;->privateGroupFactory:Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;

    .line 56
    iput-object p5, p0, Lorg/briarproject/briar/privategroup/GroupMessageValidator;->groupInvitationFactory:Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationFactory;

    return-void
.end method

.method private addMessageMetadata(Lorg/briarproject/bramble/api/client/BdfMessageContext;Lorg/briarproject/bramble/api/data/BdfList;J)V
    .locals 2

    .line 190
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/client/BdfMessageContext;->getDictionary()Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v0

    const-string v1, "member"

    invoke-virtual {v0, v1, p2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/client/BdfMessageContext;->getDictionary()Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p2

    const-string v0, "timestamp"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, v0, p3}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/client/BdfMessageContext;->getDictionary()Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p1

    const-string p2, "read"

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private validateJoin(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/Group;Lorg/briarproject/bramble/api/data/BdfList;Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/bramble/api/client/BdfMessageContext;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/4 v2, 0x4

    .line 89
    invoke-static {v1, v2}, Lorg/briarproject/bramble/util/ValidationUtils;->checkSize(Lorg/briarproject/bramble/api/data/BdfList;I)V

    const/4 v3, 0x2

    .line 90
    invoke-virtual {v1, v3}, Lorg/briarproject/bramble/api/data/BdfList;->getOptionalList(I)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v4

    const/4 v5, 0x3

    .line 91
    invoke-virtual {v1, v5}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v6

    const/16 v7, 0x40

    const/4 v8, 0x1

    .line 92
    invoke-static {v6, v8, v7}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength([BII)V

    .line 95
    iget-object v9, v0, Lorg/briarproject/briar/privategroup/GroupMessageValidator;->privateGroupFactory:Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;

    move-object/from16 v10, p2

    invoke-interface {v9, v10}, Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;->parsePrivateGroup(Lorg/briarproject/bramble/api/sync/Group;)Lorg/briarproject/briar/api/privategroup/PrivateGroup;

    move-result-object v9

    .line 96
    invoke-virtual {v9}, Lorg/briarproject/briar/api/privategroup/PrivateGroup;->getCreator()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v9

    move-object/from16 v11, p4

    .line 97
    invoke-virtual {v11, v9}, Lorg/briarproject/bramble/api/identity/Author;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_1

    if-nez v4, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    new-instance v1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v1

    :cond_1
    if-eqz v4, :cond_3

    .line 103
    invoke-static {v4, v3}, Lorg/briarproject/bramble/util/ValidationUtils;->checkSize(Lorg/briarproject/bramble/api/data/BdfList;I)V

    .line 105
    invoke-virtual {v4, v13}, Lorg/briarproject/bramble/api/data/BdfList;->getLong(I)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 106
    invoke-virtual/range {p1 .. p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v14

    cmp-long v16, v14, v19

    if-lez v16, :cond_2

    .line 108
    invoke-virtual {v4, v8}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v14

    .line 109
    invoke-static {v14, v8, v7}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength([BII)V

    .line 111
    iget-object v15, v0, Lorg/briarproject/briar/privategroup/GroupMessageValidator;->groupInvitationFactory:Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationFactory;

    .line 112
    invoke-virtual {v9}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v16

    invoke-virtual/range {p4 .. p4}, Lorg/briarproject/bramble/api/identity/Author;->getId()Lorg/briarproject/bramble/api/identity/AuthorId;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v18

    .line 111
    invoke-interface/range {v15 .. v20}, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationFactory;->createInviteToken(Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/sync/GroupId;J)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v7

    .line 115
    :try_start_0
    iget-object v15, v0, Lorg/briarproject/briar/privategroup/GroupMessageValidator;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    sget-object v5, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationFactory;->SIGNING_LABEL_INVITE:Ljava/lang/String;

    .line 117
    invoke-virtual {v9}, Lorg/briarproject/bramble/api/identity/Author;->getPublicKey()[B

    move-result-object v9

    .line 115
    invoke-interface {v15, v14, v5, v7, v9}, Lorg/briarproject/bramble/api/client/ClientHelper;->verifySignature([BLjava/lang/String;Lorg/briarproject/bramble/api/data/BdfList;[B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 124
    :goto_0
    invoke-virtual {v1, v8}, Lorg/briarproject/bramble/api/data/BdfList;->getList(I)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v1

    .line 125
    new-array v2, v2, [Ljava/lang/Object;

    .line 126
    invoke-virtual/range {p2 .. p2}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v5

    aput-object v5, v2, v13

    .line 127
    invoke-virtual/range {p1 .. p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v8

    aput-object v1, v2, v3

    const/4 v1, 0x3

    aput-object v4, v2, v1

    .line 125
    invoke-static {v2}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v1

    .line 132
    :try_start_1
    iget-object v2, v0, Lorg/briarproject/briar/privategroup/GroupMessageValidator;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    sget-object v3, Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;->SIGNING_LABEL_JOIN:Ljava/lang/String;

    .line 133
    invoke-virtual/range {p4 .. p4}, Lorg/briarproject/bramble/api/identity/Author;->getPublicKey()[B

    move-result-object v4

    .line 132
    invoke-interface {v2, v6, v3, v1, v4}, Lorg/briarproject/bramble/api/client/ClientHelper;->verifySignature([BLjava/lang/String;Lorg/briarproject/bramble/api/data/BdfList;[B)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 139
    new-instance v1, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    const-string v2, "initialJoinMsg"

    .line 140
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    new-instance v2, Lorg/briarproject/bramble/api/client/BdfMessageContext;

    invoke-direct {v2, v1}, Lorg/briarproject/bramble/api/client/BdfMessageContext;-><init>(Lorg/briarproject/bramble/api/data/BdfDictionary;)V

    return-object v2

    .line 135
    :catch_0
    new-instance v1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v1

    .line 119
    :catch_1
    new-instance v1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v1

    .line 107
    :cond_2
    new-instance v1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v1

    .line 101
    :cond_3
    new-instance v1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {v1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw v1
.end method

.method private validatePost(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/Group;Lorg/briarproject/bramble/api/data/BdfList;Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/bramble/api/client/BdfMessageContext;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const/4 v0, 0x6

    .line 148
    invoke-static {p3, v0}, Lorg/briarproject/bramble/util/ValidationUtils;->checkSize(Lorg/briarproject/bramble/api/data/BdfList;I)V

    const/4 v1, 0x2

    .line 149
    invoke-virtual {p3, v1}, Lorg/briarproject/bramble/api/data/BdfList;->getOptionalRaw(I)[B

    move-result-object v2

    const/16 v3, 0x20

    .line 150
    invoke-static {v2, v3}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength([BI)V

    const/4 v4, 0x3

    .line 151
    invoke-virtual {p3, v4}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v5

    .line 152
    invoke-static {v5, v3}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength([BI)V

    const/4 v3, 0x4

    .line 153
    invoke-virtual {p3, v3}, Lorg/briarproject/bramble/api/data/BdfList;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/16 v8, 0x7c00

    .line 154
    invoke-static {v6, v7, v8}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength(Ljava/lang/String;II)V

    const/4 v8, 0x5

    .line 155
    invoke-virtual {p3, v8}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v9

    const/16 v10, 0x40

    .line 156
    invoke-static {v9, v7, v10}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength([BII)V

    .line 159
    invoke-virtual {p3, v7}, Lorg/briarproject/bramble/api/data/BdfList;->getList(I)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p3

    .line 160
    new-array v0, v0, [Ljava/lang/Object;

    .line 161
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p2

    const/4 v10, 0x0

    aput-object p2, v0, v10

    .line 162
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v7

    aput-object p3, v0, v1

    aput-object v2, v0, v4

    aput-object v5, v0, v3

    aput-object v6, v0, v8

    .line 160
    invoke-static {v0}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p1

    .line 169
    :try_start_0
    iget-object p2, p0, Lorg/briarproject/briar/privategroup/GroupMessageValidator;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    sget-object p3, Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;->SIGNING_LABEL_POST:Ljava/lang/String;

    .line 170
    invoke-virtual {p4}, Lorg/briarproject/bramble/api/identity/Author;->getPublicKey()[B

    move-result-object p4

    .line 169
    invoke-interface {p2, v9, p3, p1, p4}, Lorg/briarproject/bramble/api/client/ClientHelper;->verifySignature([BLjava/lang/String;Lorg/briarproject/bramble/api/data/BdfList;[B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_0

    .line 178
    new-instance p2, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {p2, v2}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_0
    new-instance p2, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {p2, v5}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance p2, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-direct {p2}, Lorg/briarproject/bramble/api/data/BdfDictionary;-><init>()V

    if-eqz v2, :cond_1

    const-string p3, "parentMsgId"

    .line 183
    invoke-virtual {p2, p3, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string p3, "previousMsgId"

    .line 184
    invoke-virtual {p2, p3, v5}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    new-instance p3, Lorg/briarproject/bramble/api/client/BdfMessageContext;

    invoke-direct {p3, p2, p1}, Lorg/briarproject/bramble/api/client/BdfMessageContext;-><init>(Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/util/Collection;)V

    return-object p3

    .line 172
    :catch_0
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
.end method


# virtual methods
.method protected validateMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/Group;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/client/BdfMessageContext;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/sync/InvalidMessageException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x6

    .line 63
    invoke-static {p3, v0, v1}, Lorg/briarproject/bramble/util/ValidationUtils;->checkSize(Lorg/briarproject/bramble/api/data/BdfList;II)V

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p3, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getLong(I)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    const/4 v1, 0x1

    .line 69
    invoke-virtual {p3, v1}, Lorg/briarproject/bramble/api/data/BdfList;->getList(I)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v1

    .line 70
    iget-object v2, p0, Lorg/briarproject/briar/privategroup/GroupMessageValidator;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v2, v1}, Lorg/briarproject/bramble/api/client/ClientHelper;->parseAndValidateAuthor(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v2

    .line 73
    sget-object v3, Lorg/briarproject/briar/api/privategroup/MessageType;->JOIN:Lorg/briarproject/briar/api/privategroup/MessageType;

    invoke-virtual {v3}, Lorg/briarproject/briar/api/privategroup/MessageType;->getInt()I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 74
    invoke-direct {p0, p1, p2, p3, v2}, Lorg/briarproject/briar/privategroup/GroupMessageValidator;->validateJoin(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/Group;Lorg/briarproject/bramble/api/data/BdfList;Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/bramble/api/client/BdfMessageContext;

    move-result-object p2

    .line 75
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v2

    invoke-direct {p0, p2, v1, v2, v3}, Lorg/briarproject/briar/privategroup/GroupMessageValidator;->addMessageMetadata(Lorg/briarproject/bramble/api/client/BdfMessageContext;Lorg/briarproject/bramble/api/data/BdfList;J)V

    goto :goto_0

    .line 76
    :cond_0
    sget-object v3, Lorg/briarproject/briar/api/privategroup/MessageType;->POST:Lorg/briarproject/briar/api/privategroup/MessageType;

    invoke-virtual {v3}, Lorg/briarproject/briar/api/privategroup/MessageType;->getInt()I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 77
    invoke-direct {p0, p1, p2, p3, v2}, Lorg/briarproject/briar/privategroup/GroupMessageValidator;->validatePost(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/Group;Lorg/briarproject/bramble/api/data/BdfList;Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/bramble/api/client/BdfMessageContext;

    move-result-object p2

    .line 78
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v2

    invoke-direct {p0, p2, v1, v2, v3}, Lorg/briarproject/briar/privategroup/GroupMessageValidator;->addMessageMetadata(Lorg/briarproject/bramble/api/client/BdfMessageContext;Lorg/briarproject/bramble/api/data/BdfList;J)V

    .line 82
    :goto_0
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/client/BdfMessageContext;->getDictionary()Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p1

    const-string p3, "type"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    .line 80
    :cond_1
    new-instance p1, Lorg/briarproject/bramble/api/sync/InvalidMessageException;

    const-string p2, "Unknown Message Type"

    invoke-direct {p1, p2}, Lorg/briarproject/bramble/api/sync/InvalidMessageException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
