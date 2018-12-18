.class public interface abstract Lorg/briarproject/briar/api/messaging/PrivateMessageFactory;
.super Ljava/lang/Object;
.source "PrivateMessageFactory.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract createPrivateMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLjava/lang/String;Ljava/util/List;)Lorg/briarproject/briar/api/messaging/PrivateMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/briarproject/briar/api/messaging/AttachmentHeader;",
            ">;)",
            "Lorg/briarproject/briar/api/messaging/PrivateMessage;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method
