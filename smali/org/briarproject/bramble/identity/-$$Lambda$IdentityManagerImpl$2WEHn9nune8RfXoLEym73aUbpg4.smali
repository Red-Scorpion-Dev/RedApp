.class public final synthetic Lorg/briarproject/bramble/identity/-$$Lambda$IdentityManagerImpl$2WEHn9nune8RfXoLEym73aUbpg4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/briarproject/bramble/api/db/DbCallable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/identity/IdentityManagerImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/identity/IdentityManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/identity/-$$Lambda$IdentityManagerImpl$2WEHn9nune8RfXoLEym73aUbpg4;->f$0:Lorg/briarproject/bramble/identity/IdentityManagerImpl;

    return-void
.end method


# virtual methods
.method public final call(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/briarproject/bramble/identity/-$$Lambda$IdentityManagerImpl$2WEHn9nune8RfXoLEym73aUbpg4;->f$0:Lorg/briarproject/bramble/identity/IdentityManagerImpl;

    invoke-static {v0, p1}, Lorg/briarproject/bramble/identity/IdentityManagerImpl;->lambda$2WEHn9nune8RfXoLEym73aUbpg4(Lorg/briarproject/bramble/identity/IdentityManagerImpl;Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-result-object p1

    return-object p1
.end method
