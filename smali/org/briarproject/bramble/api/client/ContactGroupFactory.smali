.class public interface abstract Lorg/briarproject/bramble/api/client/ContactGroupFactory;
.super Ljava/lang/Object;
.source "ContactGroupFactory.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract createContactGroup(Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/contact/Contact;)Lorg/briarproject/bramble/api/sync/Group;
.end method

.method public abstract createContactGroup(Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;)Lorg/briarproject/bramble/api/sync/Group;
.end method

.method public abstract createLocalGroup(Lorg/briarproject/bramble/api/sync/ClientId;I)Lorg/briarproject/bramble/api/sync/Group;
.end method
