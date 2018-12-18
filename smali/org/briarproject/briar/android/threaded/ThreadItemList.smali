.class public interface abstract Lorg/briarproject/briar/android/threaded/ThreadItemList;
.super Ljava/lang/Object;
.source "ThreadItemList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lorg/briarproject/briar/android/threaded/ThreadItem;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/List<",
        "TI;>;"
    }
.end annotation


# virtual methods
.method public abstract getFirstVisibleItemId()Lorg/briarproject/bramble/api/sync/MessageId;
.end method

.method public abstract setFirstVisibleId(Lorg/briarproject/bramble/api/sync/MessageId;)V
.end method
