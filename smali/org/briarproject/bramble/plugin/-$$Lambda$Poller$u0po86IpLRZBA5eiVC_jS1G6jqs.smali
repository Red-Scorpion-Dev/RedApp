.class public final synthetic Lorg/briarproject/bramble/plugin/-$$Lambda$Poller$u0po86IpLRZBA5eiVC_jS1G6jqs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/plugin/Poller;

.field private final synthetic f$1:Lorg/briarproject/bramble/api/plugin/simplex/SimplexPlugin;

.field private final synthetic f$2:Lorg/briarproject/bramble/api/contact/ContactId;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/plugin/Poller;Lorg/briarproject/bramble/api/plugin/simplex/SimplexPlugin;Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/plugin/-$$Lambda$Poller$u0po86IpLRZBA5eiVC_jS1G6jqs;->f$0:Lorg/briarproject/bramble/plugin/Poller;

    iput-object p2, p0, Lorg/briarproject/bramble/plugin/-$$Lambda$Poller$u0po86IpLRZBA5eiVC_jS1G6jqs;->f$1:Lorg/briarproject/bramble/api/plugin/simplex/SimplexPlugin;

    iput-object p3, p0, Lorg/briarproject/bramble/plugin/-$$Lambda$Poller$u0po86IpLRZBA5eiVC_jS1G6jqs;->f$2:Lorg/briarproject/bramble/api/contact/ContactId;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/briarproject/bramble/plugin/-$$Lambda$Poller$u0po86IpLRZBA5eiVC_jS1G6jqs;->f$0:Lorg/briarproject/bramble/plugin/Poller;

    iget-object v1, p0, Lorg/briarproject/bramble/plugin/-$$Lambda$Poller$u0po86IpLRZBA5eiVC_jS1G6jqs;->f$1:Lorg/briarproject/bramble/api/plugin/simplex/SimplexPlugin;

    iget-object v2, p0, Lorg/briarproject/bramble/plugin/-$$Lambda$Poller$u0po86IpLRZBA5eiVC_jS1G6jqs;->f$2:Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-static {v0, v1, v2}, Lorg/briarproject/bramble/plugin/Poller;->lambda$connectToContact$0(Lorg/briarproject/bramble/plugin/Poller;Lorg/briarproject/bramble/api/plugin/simplex/SimplexPlugin;Lorg/briarproject/bramble/api/contact/ContactId;)V

    return-void
.end method
