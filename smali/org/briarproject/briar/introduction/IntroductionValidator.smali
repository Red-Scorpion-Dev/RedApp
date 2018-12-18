.class Lorg/briarproject/briar/introduction/IntroductionValidator;
.super Lorg/briarproject/bramble/api/client/BdfMessageValidator;
.source "IntroductionValidator.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final messageEncoder:Lorg/briarproject/briar/introduction/MessageEncoder;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/introduction/MessageEncoder;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;)V
    .locals 0

    .line 42
    invoke-direct {p0, p2, p3, p4}, Lorg/briarproject/bramble/api/client/BdfMessageValidator;-><init>(Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;)V

    .line 43
    iput-object p1, p0, Lorg/briarproject/briar/introduction/IntroductionValidator;->messageEncoder:Lorg/briarproject/briar/introduction/MessageEncoder;

    return-void
.end method

.method private validateAcceptMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/client/BdfMessageContext;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const/4 v0, 0x6

    .line 94
    invoke-static {p2, v0}, Lorg/briarproject/bramble/util/ValidationUtils;->checkSize(Lorg/briarproject/bramble/api/data/BdfList;I)V

    const/4 v0, 0x1

    .line 96
    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v1

    const/16 v2, 0x20

    .line 97
    invoke-static {v1, v2}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength([BI)V

    const/4 v3, 0x2

    .line 99
    invoke-virtual {p2, v3}, Lorg/briarproject/bramble/api/data/BdfList;->getOptionalRaw(I)[B

    move-result-object v3

    .line 100
    invoke-static {v3, v2}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength([BI)V

    const/4 v4, 0x3

    .line 102
    invoke-virtual {p2, v4}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v4

    const/4 v5, 0x0

    .line 103
    invoke-static {v4, v5, v2}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength([BII)V

    const/4 v2, 0x4

    .line 105
    invoke-virtual {p2, v2}, Lorg/briarproject/bramble/api/data/BdfList;->getLong(I)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-ltz v2, :cond_2

    const/4 v2, 0x5

    .line 108
    invoke-virtual {p2, v2}, Lorg/briarproject/bramble/api/data/BdfList;->getDictionary(I)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p2

    .line 109
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->size()I

    move-result v2

    if-lt v2, v0, :cond_1

    .line 110
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroductionValidator;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 111
    invoke-interface {v0, p2}, Lorg/briarproject/bramble/api/client/ClientHelper;->parseAndValidateTransportPropertiesMap(Lorg/briarproject/bramble/api/data/BdfDictionary;)Ljava/util/Map;

    .line 113
    new-instance v6, Lorg/briarproject/briar/api/client/SessionId;

    invoke-direct {v6, v1}, Lorg/briarproject/briar/api/client/SessionId;-><init>([B)V

    .line 114
    iget-object v4, p0, Lorg/briarproject/briar/introduction/IntroductionValidator;->messageEncoder:Lorg/briarproject/briar/introduction/MessageEncoder;

    sget-object v5, Lorg/briarproject/briar/introduction/MessageType;->ACCEPT:Lorg/briarproject/briar/introduction/MessageType;

    .line 115
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v4 .. v11}, Lorg/briarproject/briar/introduction/MessageEncoder;->encodeMetadata(Lorg/briarproject/briar/introduction/MessageType;Lorg/briarproject/briar/api/client/SessionId;JZZZ)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p1

    if-nez v3, :cond_0

    .line 118
    new-instance p2, Lorg/briarproject/bramble/api/client/BdfMessageContext;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/client/BdfMessageContext;-><init>(Lorg/briarproject/bramble/api/data/BdfDictionary;)V

    return-object p2

    .line 120
    :cond_0
    new-instance p2, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {p2, v3}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    .line 121
    new-instance v0, Lorg/briarproject/bramble/api/client/BdfMessageContext;

    .line 122
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lorg/briarproject/bramble/api/client/BdfMessageContext;-><init>(Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/util/Collection;)V

    return-object v0

    .line 109
    :cond_1
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    .line 106
    :cond_2
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
.end method

.method private validateActivateMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/client/BdfMessageContext;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 153
    invoke-static {p2, v0}, Lorg/briarproject/bramble/util/ValidationUtils;->checkSize(Lorg/briarproject/bramble/api/data/BdfList;I)V

    const/4 v0, 0x1

    .line 155
    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v0

    const/16 v1, 0x20

    .line 156
    invoke-static {v0, v1}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength([BI)V

    const/4 v2, 0x2

    .line 158
    invoke-virtual {p2, v2}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v2

    .line 159
    invoke-static {v2, v1}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength([BI)V

    const/4 v3, 0x3

    .line 161
    invoke-virtual {p2, v3}, Lorg/briarproject/bramble/api/data/BdfList;->getOptionalRaw(I)[B

    move-result-object p2

    .line 162
    invoke-static {p2, v1}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength([BI)V

    .line 164
    new-instance v5, Lorg/briarproject/briar/api/client/SessionId;

    invoke-direct {v5, v0}, Lorg/briarproject/briar/api/client/SessionId;-><init>([B)V

    .line 165
    iget-object v3, p0, Lorg/briarproject/briar/introduction/IntroductionValidator;->messageEncoder:Lorg/briarproject/briar/introduction/MessageEncoder;

    sget-object v4, Lorg/briarproject/briar/introduction/MessageType;->ACTIVATE:Lorg/briarproject/briar/introduction/MessageType;

    .line 166
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v3 .. v10}, Lorg/briarproject/briar/introduction/MessageEncoder;->encodeMetadata(Lorg/briarproject/briar/introduction/MessageType;Lorg/briarproject/briar/api/client/SessionId;JZZZ)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p1

    if-nez v2, :cond_0

    .line 169
    new-instance p2, Lorg/briarproject/bramble/api/client/BdfMessageContext;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/client/BdfMessageContext;-><init>(Lorg/briarproject/bramble/api/data/BdfDictionary;)V

    return-object p2

    .line 171
    :cond_0
    new-instance p2, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {p2, v2}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    .line 172
    new-instance v0, Lorg/briarproject/bramble/api/client/BdfMessageContext;

    .line 173
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lorg/briarproject/bramble/api/client/BdfMessageContext;-><init>(Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/util/Collection;)V

    return-object v0
.end method

.method private validateAuthMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/client/BdfMessageContext;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 128
    invoke-static {p2, v0}, Lorg/briarproject/bramble/util/ValidationUtils;->checkSize(Lorg/briarproject/bramble/api/data/BdfList;I)V

    const/4 v0, 0x1

    .line 130
    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v1

    const/16 v2, 0x20

    .line 131
    invoke-static {v1, v2}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength([BI)V

    const/4 v3, 0x2

    .line 133
    invoke-virtual {p2, v3}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v3

    .line 134
    invoke-static {v3, v2}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength([BI)V

    const/4 v4, 0x3

    .line 136
    invoke-virtual {p2, v4}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v4

    .line 137
    invoke-static {v4, v2}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength([BI)V

    const/4 v2, 0x4

    .line 139
    invoke-virtual {p2, v2}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object p2

    const/16 v2, 0x40

    .line 140
    invoke-static {p2, v0, v2}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength([BII)V

    .line 142
    new-instance v6, Lorg/briarproject/briar/api/client/SessionId;

    invoke-direct {v6, v1}, Lorg/briarproject/briar/api/client/SessionId;-><init>([B)V

    .line 143
    iget-object v4, p0, Lorg/briarproject/briar/introduction/IntroductionValidator;->messageEncoder:Lorg/briarproject/briar/introduction/MessageEncoder;

    sget-object v5, Lorg/briarproject/briar/introduction/MessageType;->AUTH:Lorg/briarproject/briar/introduction/MessageType;

    .line 144
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v4 .. v11}, Lorg/briarproject/briar/introduction/MessageEncoder;->encodeMetadata(Lorg/briarproject/briar/introduction/MessageType;Lorg/briarproject/briar/api/client/SessionId;JZZZ)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p1

    .line 146
    new-instance p2, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {p2, v3}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    .line 147
    new-instance v0, Lorg/briarproject/bramble/api/client/BdfMessageContext;

    .line 148
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lorg/briarproject/bramble/api/client/BdfMessageContext;-><init>(Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/util/Collection;)V

    return-object v0
.end method

.method private validateOtherMessage(Lorg/briarproject/briar/introduction/MessageType;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/client/BdfMessageContext;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 179
    invoke-static {p3, v0}, Lorg/briarproject/bramble/util/ValidationUtils;->checkSize(Lorg/briarproject/bramble/api/data/BdfList;I)V

    const/4 v0, 0x1

    .line 181
    invoke-virtual {p3, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getRaw(I)[B

    move-result-object v0

    const/16 v1, 0x20

    .line 182
    invoke-static {v0, v1}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength([BI)V

    const/4 v2, 0x2

    .line 184
    invoke-virtual {p3, v2}, Lorg/briarproject/bramble/api/data/BdfList;->getOptionalRaw(I)[B

    move-result-object p3

    .line 185
    invoke-static {p3, v1}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength([BI)V

    .line 187
    new-instance v4, Lorg/briarproject/briar/api/client/SessionId;

    invoke-direct {v4, v0}, Lorg/briarproject/briar/api/client/SessionId;-><init>([B)V

    .line 188
    iget-object v2, p0, Lorg/briarproject/briar/introduction/IntroductionValidator;->messageEncoder:Lorg/briarproject/briar/introduction/MessageEncoder;

    .line 189
    invoke-virtual {p2}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p1

    invoke-interface/range {v2 .. v9}, Lorg/briarproject/briar/introduction/MessageEncoder;->encodeMetadata(Lorg/briarproject/briar/introduction/MessageType;Lorg/briarproject/briar/api/client/SessionId;JZZZ)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p1

    if-nez p3, :cond_0

    .line 192
    new-instance p2, Lorg/briarproject/bramble/api/client/BdfMessageContext;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/client/BdfMessageContext;-><init>(Lorg/briarproject/bramble/api/data/BdfDictionary;)V

    return-object p2

    .line 194
    :cond_0
    new-instance p2, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {p2, p3}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    .line 195
    new-instance p3, Lorg/briarproject/bramble/api/client/BdfMessageContext;

    .line 196
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p3, p1, p2}, Lorg/briarproject/bramble/api/client/BdfMessageContext;-><init>(Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/util/Collection;)V

    return-object p3
.end method

.method private validateRequestMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/client/BdfMessageContext;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 70
    invoke-static {p2, v0}, Lorg/briarproject/bramble/util/ValidationUtils;->checkSize(Lorg/briarproject/bramble/api/data/BdfList;I)V

    const/4 v0, 0x1

    .line 72
    invoke-virtual {p2, v0}, Lorg/briarproject/bramble/api/data/BdfList;->getOptionalRaw(I)[B

    move-result-object v1

    const/16 v2, 0x20

    .line 73
    invoke-static {v1, v2}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength([BI)V

    const/4 v2, 0x2

    .line 75
    invoke-virtual {p2, v2}, Lorg/briarproject/bramble/api/data/BdfList;->getList(I)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v2

    .line 76
    iget-object v3, p0, Lorg/briarproject/briar/introduction/IntroductionValidator;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v3, v2}, Lorg/briarproject/bramble/api/client/ClientHelper;->parseAndValidateAuthor(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/identity/Author;

    const/4 v2, 0x3

    .line 78
    invoke-virtual {p2, v2}, Lorg/briarproject/bramble/api/data/BdfList;->getOptionalString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v2, 0x7c00

    .line 79
    invoke-static {p2, v0, v2}, Lorg/briarproject/bramble/util/ValidationUtils;->checkLength(Ljava/lang/String;II)V

    .line 81
    iget-object p2, p0, Lorg/briarproject/briar/introduction/IntroductionValidator;->messageEncoder:Lorg/briarproject/briar/introduction/MessageEncoder;

    .line 82
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v2

    invoke-interface {p2, v2, v3}, Lorg/briarproject/briar/introduction/MessageEncoder;->encodeRequestMetadata(J)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p1

    if-nez v1, :cond_0

    .line 84
    new-instance p2, Lorg/briarproject/bramble/api/client/BdfMessageContext;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/client/BdfMessageContext;-><init>(Lorg/briarproject/bramble/api/data/BdfDictionary;)V

    return-object p2

    .line 86
    :cond_0
    new-instance p2, Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-direct {p2, v1}, Lorg/briarproject/bramble/api/sync/MessageId;-><init>([B)V

    .line 87
    new-instance v0, Lorg/briarproject/bramble/api/client/BdfMessageContext;

    .line 88
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lorg/briarproject/bramble/api/client/BdfMessageContext;-><init>(Lorg/briarproject/bramble/api/data/BdfDictionary;Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method protected validateMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/Group;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/client/BdfMessageContext;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    const/4 p2, 0x0

    .line 49
    invoke-virtual {p3, p2}, Lorg/briarproject/bramble/api/data/BdfList;->getLong(I)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->intValue()I

    move-result p2

    invoke-static {p2}, Lorg/briarproject/briar/introduction/MessageType;->fromValue(I)Lorg/briarproject/briar/introduction/MessageType;

    move-result-object p2

    .line 51
    sget-object v0, Lorg/briarproject/briar/introduction/IntroductionValidator$1;->$SwitchMap$org$briarproject$briar$introduction$MessageType:[I

    invoke-virtual {p2}, Lorg/briarproject/briar/introduction/MessageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 64
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1

    .line 62
    :pswitch_0
    invoke-direct {p0, p2, p1, p3}, Lorg/briarproject/briar/introduction/IntroductionValidator;->validateOtherMessage(Lorg/briarproject/briar/introduction/MessageType;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/client/BdfMessageContext;

    move-result-object p1

    return-object p1

    .line 59
    :pswitch_1
    invoke-direct {p0, p1, p3}, Lorg/briarproject/briar/introduction/IntroductionValidator;->validateActivateMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/client/BdfMessageContext;

    move-result-object p1

    return-object p1

    .line 57
    :pswitch_2
    invoke-direct {p0, p1, p3}, Lorg/briarproject/briar/introduction/IntroductionValidator;->validateAuthMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/client/BdfMessageContext;

    move-result-object p1

    return-object p1

    .line 55
    :pswitch_3
    invoke-direct {p0, p1, p3}, Lorg/briarproject/briar/introduction/IntroductionValidator;->validateAcceptMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/client/BdfMessageContext;

    move-result-object p1

    return-object p1

    .line 53
    :pswitch_4
    invoke-direct {p0, p1, p3}, Lorg/briarproject/briar/introduction/IntroductionValidator;->validateRequestMessage(Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/client/BdfMessageContext;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
