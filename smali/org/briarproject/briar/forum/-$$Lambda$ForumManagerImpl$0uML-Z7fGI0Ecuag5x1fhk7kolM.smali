.class public final synthetic Lorg/briarproject/briar/forum/-$$Lambda$ForumManagerImpl$0uML-Z7fGI0Ecuag5x1fhk7kolM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/briarproject/bramble/api/db/DbCallable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/forum/ForumManagerImpl;

.field private final synthetic f$1:Lorg/briarproject/bramble/api/sync/GroupId;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/forum/ForumManagerImpl;Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/forum/-$$Lambda$ForumManagerImpl$0uML-Z7fGI0Ecuag5x1fhk7kolM;->f$0:Lorg/briarproject/briar/forum/ForumManagerImpl;

    iput-object p2, p0, Lorg/briarproject/briar/forum/-$$Lambda$ForumManagerImpl$0uML-Z7fGI0Ecuag5x1fhk7kolM;->f$1:Lorg/briarproject/bramble/api/sync/GroupId;

    return-void
.end method


# virtual methods
.method public final call(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/forum/-$$Lambda$ForumManagerImpl$0uML-Z7fGI0Ecuag5x1fhk7kolM;->f$0:Lorg/briarproject/briar/forum/ForumManagerImpl;

    iget-object v1, p0, Lorg/briarproject/briar/forum/-$$Lambda$ForumManagerImpl$0uML-Z7fGI0Ecuag5x1fhk7kolM;->f$1:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-static {v0, v1, p1}, Lorg/briarproject/briar/forum/ForumManagerImpl;->lambda$getForum$3(Lorg/briarproject/briar/forum/ForumManagerImpl;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/briar/api/forum/Forum;

    move-result-object p1

    return-object p1
.end method
