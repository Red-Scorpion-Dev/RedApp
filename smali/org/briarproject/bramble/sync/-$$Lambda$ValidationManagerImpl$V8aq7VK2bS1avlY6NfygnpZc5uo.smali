.class public final synthetic Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$V8aq7VK2bS1avlY6NfygnpZc5uo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/sync/ValidationManagerImpl;

.field private final synthetic f$1:Lorg/briarproject/bramble/api/sync/Message;

.field private final synthetic f$2:Lorg/briarproject/bramble/api/sync/ClientId;

.field private final synthetic f$3:I

.field private final synthetic f$4:Lorg/briarproject/bramble/api/sync/MessageContext;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/sync/ValidationManagerImpl;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/sync/MessageContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$V8aq7VK2bS1avlY6NfygnpZc5uo;->f$0:Lorg/briarproject/bramble/sync/ValidationManagerImpl;

    iput-object p2, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$V8aq7VK2bS1avlY6NfygnpZc5uo;->f$1:Lorg/briarproject/bramble/api/sync/Message;

    iput-object p3, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$V8aq7VK2bS1avlY6NfygnpZc5uo;->f$2:Lorg/briarproject/bramble/api/sync/ClientId;

    iput p4, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$V8aq7VK2bS1avlY6NfygnpZc5uo;->f$3:I

    iput-object p5, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$V8aq7VK2bS1avlY6NfygnpZc5uo;->f$4:Lorg/briarproject/bramble/api/sync/MessageContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$V8aq7VK2bS1avlY6NfygnpZc5uo;->f$0:Lorg/briarproject/bramble/sync/ValidationManagerImpl;

    iget-object v1, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$V8aq7VK2bS1avlY6NfygnpZc5uo;->f$1:Lorg/briarproject/bramble/api/sync/Message;

    iget-object v2, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$V8aq7VK2bS1avlY6NfygnpZc5uo;->f$2:Lorg/briarproject/bramble/api/sync/ClientId;

    iget v3, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$V8aq7VK2bS1avlY6NfygnpZc5uo;->f$3:I

    iget-object v4, p0, Lorg/briarproject/bramble/sync/-$$Lambda$ValidationManagerImpl$V8aq7VK2bS1avlY6NfygnpZc5uo;->f$4:Lorg/briarproject/bramble/api/sync/MessageContext;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/briarproject/bramble/sync/ValidationManagerImpl;->lambda$storeMessageContextAsync$5(Lorg/briarproject/bramble/sync/ValidationManagerImpl;Lorg/briarproject/bramble/api/sync/Message;Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/sync/MessageContext;)V

    return-void
.end method
