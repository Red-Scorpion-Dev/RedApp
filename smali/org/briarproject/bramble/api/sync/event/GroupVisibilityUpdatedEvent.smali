.class public Lorg/briarproject/bramble/api/sync/event/GroupVisibilityUpdatedEvent;
.super Lorg/briarproject/bramble/api/event/Event;
.source "GroupVisibilityUpdatedEvent.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final affected:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lorg/briarproject/bramble/api/event/Event;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/briarproject/bramble/api/sync/event/GroupVisibilityUpdatedEvent;->affected:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public getAffectedContacts()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lorg/briarproject/bramble/api/sync/event/GroupVisibilityUpdatedEvent;->affected:Ljava/util/Collection;

    return-object v0
.end method
