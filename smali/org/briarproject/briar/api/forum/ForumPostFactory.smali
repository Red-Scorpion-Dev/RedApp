.class public interface abstract Lorg/briarproject/briar/api/forum/ForumPostFactory;
.super Ljava/lang/Object;
.source "ForumPostFactory.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field public static final SIGNING_LABEL_POST:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/briarproject/briar/api/forum/ForumManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/ClientId;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/POST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/api/forum/ForumPostFactory;->SIGNING_LABEL_POST:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract createPost(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/identity/LocalAuthor;Ljava/lang/String;)Lorg/briarproject/briar/api/forum/ForumPost;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Lorg/briarproject/bramble/api/crypto/CryptoExecutor;
    .end annotation
.end method
