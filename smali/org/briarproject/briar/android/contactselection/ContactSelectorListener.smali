.class public interface abstract Lorg/briarproject/briar/android/contactselection/ContactSelectorListener;
.super Ljava/lang/Object;
.source "ContactSelectorListener.java"

# interfaces
.implements Lorg/briarproject/briar/android/DestroyableContext;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract contactsSelected(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ">;)V"
        }
    .end annotation
.end method
