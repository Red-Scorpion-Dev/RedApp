.class public interface abstract Lorg/briarproject/briar/api/feed/FeedManager;
.super Ljava/lang/Object;
.source "FeedManager.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field public static final CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

.field public static final MAJOR_VERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lorg/briarproject/bramble/api/sync/ClientId;

    const-string v1, "org.briarproject.briar.feed"

    invoke-direct {v0, v1}, Lorg/briarproject/bramble/api/sync/ClientId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/briarproject/briar/api/feed/FeedManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    return-void
.end method


# virtual methods
.method public abstract addFeed(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getFeeds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/briarproject/briar/api/feed/Feed;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract removeFeed(Lorg/briarproject/briar/api/feed/Feed;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method
