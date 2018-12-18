.class public final synthetic Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$qOUEH10OW_q7vkSBq2wATQMJ8XM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/briarproject/bramble/api/db/DbCallable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/contact/ContactManagerImpl;

.field private final synthetic f$1:Lorg/briarproject/bramble/api/identity/AuthorId;

.field private final synthetic f$2:Lorg/briarproject/bramble/api/identity/AuthorId;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/contact/ContactManagerImpl;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$qOUEH10OW_q7vkSBq2wATQMJ8XM;->f$0:Lorg/briarproject/bramble/contact/ContactManagerImpl;

    iput-object p2, p0, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$qOUEH10OW_q7vkSBq2wATQMJ8XM;->f$1:Lorg/briarproject/bramble/api/identity/AuthorId;

    iput-object p3, p0, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$qOUEH10OW_q7vkSBq2wATQMJ8XM;->f$2:Lorg/briarproject/bramble/api/identity/AuthorId;

    return-void
.end method


# virtual methods
.method public final call(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$qOUEH10OW_q7vkSBq2wATQMJ8XM;->f$0:Lorg/briarproject/bramble/contact/ContactManagerImpl;

    iget-object v1, p0, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$qOUEH10OW_q7vkSBq2wATQMJ8XM;->f$1:Lorg/briarproject/bramble/api/identity/AuthorId;

    iget-object v2, p0, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$qOUEH10OW_q7vkSBq2wATQMJ8XM;->f$2:Lorg/briarproject/bramble/api/identity/AuthorId;

    invoke-static {v0, v1, v2, p1}, Lorg/briarproject/bramble/contact/ContactManagerImpl;->lambda$contactExists$5(Lorg/briarproject/bramble/contact/ContactManagerImpl;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
