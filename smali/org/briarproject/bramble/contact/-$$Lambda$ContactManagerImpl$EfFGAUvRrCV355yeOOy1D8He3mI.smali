.class public final synthetic Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$EfFGAUvRrCV355yeOOy1D8He3mI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/briarproject/bramble/api/db/DbRunnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/contact/ContactManagerImpl;

.field private final synthetic f$1:Lorg/briarproject/bramble/api/contact/ContactId;

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/contact/ContactManagerImpl;Lorg/briarproject/bramble/api/contact/ContactId;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$EfFGAUvRrCV355yeOOy1D8He3mI;->f$0:Lorg/briarproject/bramble/contact/ContactManagerImpl;

    iput-object p2, p0, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$EfFGAUvRrCV355yeOOy1D8He3mI;->f$1:Lorg/briarproject/bramble/api/contact/ContactId;

    iput-object p3, p0, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$EfFGAUvRrCV355yeOOy1D8He3mI;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run(Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 3

    iget-object v0, p0, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$EfFGAUvRrCV355yeOOy1D8He3mI;->f$0:Lorg/briarproject/bramble/contact/ContactManagerImpl;

    iget-object v1, p0, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$EfFGAUvRrCV355yeOOy1D8He3mI;->f$1:Lorg/briarproject/bramble/api/contact/ContactId;

    iget-object v2, p0, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$EfFGAUvRrCV355yeOOy1D8He3mI;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lorg/briarproject/bramble/contact/ContactManagerImpl;->lambda$setContactAlias$4(Lorg/briarproject/bramble/contact/ContactManagerImpl;Lorg/briarproject/bramble/api/contact/ContactId;Ljava/lang/String;Lorg/briarproject/bramble/api/db/Transaction;)V

    return-void
.end method
