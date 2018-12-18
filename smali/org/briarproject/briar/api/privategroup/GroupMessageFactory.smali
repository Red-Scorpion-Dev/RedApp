.class public interface abstract Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;
.super Ljava/lang/Object;
.source "GroupMessageFactory.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field public static final SIGNING_LABEL_JOIN:Ljava/lang/String;

.field public static final SIGNING_LABEL_POST:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/ClientId;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/JOIN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;->SIGNING_LABEL_JOIN:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/ClientId;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/POST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;->SIGNING_LABEL_POST:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract createGroupMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/identity/LocalAuthor;Ljava/lang/String;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/briar/api/privategroup/GroupMessage;
    .annotation runtime Lorg/briarproject/bramble/api/crypto/CryptoExecutor;
    .end annotation
.end method

.method public abstract createJoinMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/identity/LocalAuthor;)Lorg/briarproject/briar/api/privategroup/GroupMessage;
    .annotation runtime Lorg/briarproject/bramble/api/crypto/CryptoExecutor;
    .end annotation
.end method

.method public abstract createJoinMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/identity/LocalAuthor;J[B)Lorg/briarproject/briar/api/privategroup/GroupMessage;
    .annotation runtime Lorg/briarproject/bramble/api/crypto/CryptoExecutor;
    .end annotation
.end method
