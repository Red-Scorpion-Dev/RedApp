.class public Lorg/briarproject/bramble/api/identity/event/LocalAuthorRemovedEvent;
.super Lorg/briarproject/bramble/api/event/Event;
.source "LocalAuthorRemovedEvent.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final authorId:Lorg/briarproject/bramble/api/identity/AuthorId;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/identity/AuthorId;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lorg/briarproject/bramble/api/event/Event;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/briarproject/bramble/api/identity/event/LocalAuthorRemovedEvent;->authorId:Lorg/briarproject/bramble/api/identity/AuthorId;

    return-void
.end method


# virtual methods
.method public getAuthorId()Lorg/briarproject/bramble/api/identity/AuthorId;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/briarproject/bramble/api/identity/event/LocalAuthorRemovedEvent;->authorId:Lorg/briarproject/bramble/api/identity/AuthorId;

    return-object v0
.end method
