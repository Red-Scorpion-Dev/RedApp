.class public final synthetic Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$qmwNJrGUX-eZOnsX7tF5sVVeKuw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/briarproject/bramble/api/db/DbCallable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/contact/ContactManagerImpl;

.field private final synthetic f$1:Lorg/briarproject/bramble/api/contact/ContactId;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/contact/ContactManagerImpl;Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$qmwNJrGUX-eZOnsX7tF5sVVeKuw;->f$0:Lorg/briarproject/bramble/contact/ContactManagerImpl;

    iput-object p2, p0, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$qmwNJrGUX-eZOnsX7tF5sVVeKuw;->f$1:Lorg/briarproject/bramble/api/contact/ContactId;

    return-void
.end method


# virtual methods
.method public final call(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$qmwNJrGUX-eZOnsX7tF5sVVeKuw;->f$0:Lorg/briarproject/bramble/contact/ContactManagerImpl;

    iget-object v1, p0, Lorg/briarproject/bramble/contact/-$$Lambda$ContactManagerImpl$qmwNJrGUX-eZOnsX7tF5sVVeKuw;->f$1:Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/contact/ContactManagerImpl;->lambda$getContact$1(Lorg/briarproject/bramble/contact/ContactManagerImpl;Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/contact/Contact;

    move-result-object p1

    return-object p1
.end method
