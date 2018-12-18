.class interface abstract Lorg/briarproject/briar/introduction/MessageEncoder;
.super Ljava/lang/Object;
.source "MessageEncoder.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract addSessionId(Lorg/briarproject/bramble/api/data/BdfDictionary;Lorg/briarproject/briar/api/client/SessionId;)V
.end method

.method public abstract encodeAbortMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/api/client/SessionId;)Lorg/briarproject/bramble/api/sync/Message;
.end method

.method public abstract encodeAcceptMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/api/client/SessionId;[BJLjava/util/Map;)Lorg/briarproject/bramble/api/sync/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "J",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "Lorg/briarproject/briar/api/client/SessionId;",
            "[BJ",
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/plugin/TransportId;",
            "Lorg/briarproject/bramble/api/properties/TransportProperties;",
            ">;)",
            "Lorg/briarproject/bramble/api/sync/Message;"
        }
    .end annotation
.end method

.method public abstract encodeActivateMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/api/client/SessionId;[B)Lorg/briarproject/bramble/api/sync/Message;
.end method

.method public abstract encodeAuthMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/api/client/SessionId;[B[B)Lorg/briarproject/bramble/api/sync/Message;
.end method

.method public abstract encodeDeclineMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/briar/api/client/SessionId;)Lorg/briarproject/bramble/api/sync/Message;
.end method

.method public abstract encodeMetadata(Lorg/briarproject/briar/introduction/MessageType;Lorg/briarproject/briar/api/client/SessionId;JZZZ)Lorg/briarproject/bramble/api/data/BdfDictionary;
.end method

.method public abstract encodeRequestMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/identity/Author;Ljava/lang/String;)Lorg/briarproject/bramble/api/sync/Message;
.end method

.method public abstract encodeRequestMetadata(J)Lorg/briarproject/bramble/api/data/BdfDictionary;
.end method

.method public abstract setAvailableToAnswer(Lorg/briarproject/bramble/api/data/BdfDictionary;Z)V
.end method

.method public abstract setVisibleInUi(Lorg/briarproject/bramble/api/data/BdfDictionary;Z)V
.end method
