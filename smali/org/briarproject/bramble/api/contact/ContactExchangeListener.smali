.class public interface abstract Lorg/briarproject/bramble/api/contact/ContactExchangeListener;
.super Ljava/lang/Object;
.source "ContactExchangeListener.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract contactExchangeFailed()V
.end method

.method public abstract contactExchangeSucceeded(Lorg/briarproject/bramble/api/identity/Author;)V
.end method

.method public abstract duplicateContact(Lorg/briarproject/bramble/api/identity/Author;)V
.end method
