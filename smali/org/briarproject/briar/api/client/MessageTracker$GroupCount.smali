.class public Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;
.super Ljava/lang/Object;
.source "MessageTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/api/client/MessageTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupCount"
.end annotation


# instance fields
.field private final latestMsgTime:J

.field private final msgCount:I

.field private final unreadCount:I


# direct methods
.method public constructor <init>(IIJ)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;->msgCount:I

    .line 68
    iput p2, p0, Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;->unreadCount:I

    .line 69
    iput-wide p3, p0, Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;->latestMsgTime:J

    return-void
.end method


# virtual methods
.method public getLatestMsgTime()J
    .locals 2

    .line 81
    iget-wide v0, p0, Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;->latestMsgTime:J

    return-wide v0
.end method

.method public getMsgCount()I
    .locals 1

    .line 73
    iget v0, p0, Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;->msgCount:I

    return v0
.end method

.method public getUnreadCount()I
    .locals 1

    .line 77
    iget v0, p0, Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;->unreadCount:I

    return v0
.end method
