.class public interface abstract Lorg/briarproject/briar/api/blog/BlogPostFactory;
.super Ljava/lang/Object;
.source "BlogPostFactory.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field public static final SIGNING_LABEL_COMMENT:Ljava/lang/String;

.field public static final SIGNING_LABEL_POST:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/briarproject/briar/api/blog/BlogManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/ClientId;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/POST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/api/blog/BlogPostFactory;->SIGNING_LABEL_POST:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/briarproject/briar/api/blog/BlogManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/ClientId;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/COMMENT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/api/blog/BlogPostFactory;->SIGNING_LABEL_COMMENT:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract createBlogComment(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/LocalAuthor;Ljava/lang/String;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public abstract createBlogPost(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/identity/LocalAuthor;Ljava/lang/String;)Lorg/briarproject/briar/api/blog/BlogPost;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public abstract rewrapWrappedComment(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfList;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method

.method public abstract rewrapWrappedPost(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/sync/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method

.method public abstract wrapComment(Lorg/briarproject/bramble/api/sync/GroupId;[BJLorg/briarproject/bramble/api/data/BdfList;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/bramble/api/sync/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method

.method public abstract wrapPost(Lorg/briarproject/bramble/api/sync/GroupId;[BJLorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/sync/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation
.end method
