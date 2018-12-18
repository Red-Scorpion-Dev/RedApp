.class public final synthetic Lorg/briarproject/briar/forum/-$$Lambda$ForumManagerImpl$GnWflFRYDHmiue1NITFz13hCuAA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/briarproject/bramble/api/db/DbRunnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/forum/ForumManagerImpl;

.field private final synthetic f$1:Lorg/briarproject/briar/api/forum/Forum;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/forum/ForumManagerImpl;Lorg/briarproject/briar/api/forum/Forum;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/forum/-$$Lambda$ForumManagerImpl$GnWflFRYDHmiue1NITFz13hCuAA;->f$0:Lorg/briarproject/briar/forum/ForumManagerImpl;

    iput-object p2, p0, Lorg/briarproject/briar/forum/-$$Lambda$ForumManagerImpl$GnWflFRYDHmiue1NITFz13hCuAA;->f$1:Lorg/briarproject/briar/api/forum/Forum;

    return-void
.end method


# virtual methods
.method public final run(Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/forum/-$$Lambda$ForumManagerImpl$GnWflFRYDHmiue1NITFz13hCuAA;->f$0:Lorg/briarproject/briar/forum/ForumManagerImpl;

    iget-object v1, p0, Lorg/briarproject/briar/forum/-$$Lambda$ForumManagerImpl$GnWflFRYDHmiue1NITFz13hCuAA;->f$1:Lorg/briarproject/briar/api/forum/Forum;

    invoke-static {v0, v1, p1}, Lorg/briarproject/briar/forum/ForumManagerImpl;->lambda$addForum$0(Lorg/briarproject/briar/forum/ForumManagerImpl;Lorg/briarproject/briar/api/forum/Forum;Lorg/briarproject/bramble/api/db/Transaction;)V

    return-void
.end method
