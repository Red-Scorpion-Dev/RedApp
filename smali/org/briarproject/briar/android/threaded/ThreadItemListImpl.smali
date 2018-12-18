.class public Lorg/briarproject/briar/android/threaded/ThreadItemListImpl;
.super Ljava/util/ArrayList;
.source "ThreadItemListImpl.java"

# interfaces
.implements Lorg/briarproject/briar/android/threaded/ThreadItemList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lorg/briarproject/briar/android/threaded/ThreadItem;",
        ">",
        "Ljava/util/ArrayList<",
        "TI;>;",
        "Lorg/briarproject/briar/android/threaded/ThreadItemList<",
        "TI;>;"
    }
.end annotation


# instance fields
.field private bottomVisibleItemId:Lorg/briarproject/bramble/api/sync/MessageId;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public getFirstVisibleItemId()Lorg/briarproject/bramble/api/sync/MessageId;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadItemListImpl;->bottomVisibleItemId:Lorg/briarproject/bramble/api/sync/MessageId;

    return-object v0
.end method

.method public setFirstVisibleId(Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lorg/briarproject/briar/android/threaded/ThreadItemListImpl;->bottomVisibleItemId:Lorg/briarproject/bramble/api/sync/MessageId;

    return-void
.end method
