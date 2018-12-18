.class public interface abstract Lorg/briarproject/briar/api/test/TestDataCreator;
.super Ljava/lang/Object;
.source "TestDataCreator.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract addContact(Ljava/lang/String;)Lorg/briarproject/bramble/api/contact/Contact;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .annotation runtime Lorg/briarproject/bramble/api/lifecycle/IoExecutor;
    .end annotation
.end method

.method public abstract addPrivateMessage(Lorg/briarproject/bramble/api/contact/Contact;Ljava/lang/String;JZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .annotation runtime Lorg/briarproject/bramble/api/lifecycle/IoExecutor;
    .end annotation
.end method

.method public abstract createTestData(IIIII)V
.end method
