.class Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$UnreadCount;
.super Ljava/lang/Object;
.source "ThreadItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnreadCount"
.end annotation


# instance fields
.field final bottom:I

.field final top:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput p1, p0, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$UnreadCount;->top:I

    .line 197
    iput p2, p0, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$UnreadCount;->bottom:I

    return-void
.end method

.method synthetic constructor <init>(IILorg/briarproject/briar/android/threaded/ThreadItemAdapter$1;)V
    .locals 0

    .line 191
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/android/threaded/ThreadItemAdapter$UnreadCount;-><init>(II)V

    return-void
.end method
