.class public interface abstract Lorg/briarproject/briar/api/forum/ForumSharingManager;
.super Ljava/lang/Object;
.source "ForumSharingManager.java"

# interfaces
.implements Lorg/briarproject/briar/api/sharing/SharingManager;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/briarproject/briar/api/sharing/SharingManager<",
        "Lorg/briarproject/briar/api/forum/Forum;",
        ">;"
    }
.end annotation


# static fields
.field public static final CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

.field public static final MAJOR_VERSION:I

.field public static final MINOR_VERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lorg/briarproject/bramble/api/sync/ClientId;

    const-string v1, "org.briarproject.briar.forum.sharing"

    invoke-direct {v0, v1}, Lorg/briarproject/bramble/api/sync/ClientId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/briarproject/briar/api/forum/ForumSharingManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    return-void
.end method
