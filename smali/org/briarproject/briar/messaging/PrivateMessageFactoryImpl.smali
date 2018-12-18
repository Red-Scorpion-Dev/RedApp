.class Lorg/briarproject/briar/messaging/PrivateMessageFactoryImpl;
.super Ljava/lang/Object;
.source "PrivateMessageFactoryImpl.java"

# interfaces
.implements Lorg/briarproject/briar/api/messaging/PrivateMessageFactory;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/client/ClientHelper;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/briarproject/briar/messaging/PrivateMessageFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    return-void
.end method


# virtual methods
.method public createPrivateMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLjava/lang/String;Ljava/util/List;)Lorg/briarproject/briar/api/messaging/PrivateMessage;
    .locals 1
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

    const/16 p5, 0x7c00

    .line 37
    invoke-static {p4, p5}, Lorg/briarproject/bramble/util/StringUtils;->utf8IsTooLong(Ljava/lang/String;I)Z

    move-result p5

    if-nez p5, :cond_0

    const/4 p5, 0x1

    .line 40
    new-array p5, p5, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p4, p5, v0

    invoke-static {p5}, Lorg/briarproject/bramble/api/data/BdfList;->of([Ljava/lang/Object;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p4

    .line 41
    iget-object p5, p0, Lorg/briarproject/briar/messaging/PrivateMessageFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {p5, p1, p2, p3, p4}, Lorg/briarproject/bramble/api/client/ClientHelper;->createMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1

    .line 42
    new-instance p2, Lorg/briarproject/briar/api/messaging/PrivateMessage;

    invoke-direct {p2, p1}, Lorg/briarproject/briar/api/messaging/PrivateMessage;-><init>(Lorg/briarproject/bramble/api/sync/Message;)V

    return-object p2

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
