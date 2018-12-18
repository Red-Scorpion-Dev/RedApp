.class public Lorg/h2/util/ThreadDeadlockDetector;
.super Ljava/lang/Object;
.source "ThreadDeadlockDetector.java"


# static fields
.field private static final INDENT:Ljava/lang/String; = "    "

.field private static detector:Lorg/h2/util/ThreadDeadlockDetector;


# instance fields
.field private final threadBean:Ljava/lang/management/ThreadMXBean;

.field private final threadCheck:Ljava/util/Timer;


# direct methods
.method private constructor <init>()V
    .locals 7

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/Timer;

    const-string v1, "ThreadDeadlockDetector"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lorg/h2/util/ThreadDeadlockDetector;->threadCheck:Ljava/util/Timer;

    .line 38
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getThreadMXBean()Ljava/lang/management/ThreadMXBean;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/util/ThreadDeadlockDetector;->threadBean:Ljava/lang/management/ThreadMXBean;

    .line 41
    iget-object v1, p0, Lorg/h2/util/ThreadDeadlockDetector;->threadCheck:Ljava/util/Timer;

    new-instance v2, Lorg/h2/util/ThreadDeadlockDetector$1;

    invoke-direct {v2, p0}, Lorg/h2/util/ThreadDeadlockDetector$1;-><init>(Lorg/h2/util/ThreadDeadlockDetector;)V

    const-wide/16 v3, 0xa

    const-wide/16 v5, 0x2710

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public static declared-synchronized init()V
    .locals 2

    const-class v0, Lorg/h2/util/ThreadDeadlockDetector;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lorg/h2/util/ThreadDeadlockDetector;->detector:Lorg/h2/util/ThreadDeadlockDetector;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lorg/h2/util/ThreadDeadlockDetector;

    invoke-direct {v1}, Lorg/h2/util/ThreadDeadlockDetector;-><init>()V

    sput-object v1, Lorg/h2/util/ThreadDeadlockDetector;->detector:Lorg/h2/util/ThreadDeadlockDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 52
    monitor-exit v0

    throw v1
.end method

.method private static printLockInfo(Ljava/io/PrintWriter;[Ljava/lang/management/LockInfo;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "[",
            "Ljava/lang/management/LockInfo;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Locked synchronizers: count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    Waiting for table: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    if-eqz p3, :cond_2

    .line 143
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "    Exclusive table locks: count = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 145
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "      - "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-eqz p4, :cond_3

    .line 149
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "    Shared table locks: count = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 151
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "      - "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 154
    :cond_3
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method private static printThread(Ljava/io/PrintWriter;Ljava/lang/management/ThreadInfo;)V
    .locals 3

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/management/ThreadInfo;->getThreadName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/management/ThreadInfo;->getThreadId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/management/ThreadInfo;->getThreadState()Ljava/lang/Thread$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Ljava/lang/management/ThreadInfo;->getLockName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " on lock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/management/ThreadInfo;->getLockName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 118
    :cond_0
    invoke-virtual {p1}, Ljava/lang/management/ThreadInfo;->isSuspended()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " (suspended)"

    .line 119
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 121
    :cond_1
    invoke-virtual {p1}, Ljava/lang/management/ThreadInfo;->isInNative()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, " (running in native)"

    .line 122
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 124
    :cond_2
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 125
    invoke-virtual {p1}, Ljava/lang/management/ThreadInfo;->getLockOwnerName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     owned by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/management/ThreadInfo;->getLockOwnerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/management/ThreadInfo;->getLockOwnerId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private static printThreadInfo(Ljava/io/PrintWriter;Ljava/lang/management/ThreadInfo;)V
    .locals 8

    .line 95
    invoke-static {p0, p1}, Lorg/h2/util/ThreadDeadlockDetector;->printThread(Ljava/io/PrintWriter;Ljava/lang/management/ThreadInfo;)V

    .line 98
    invoke-virtual {p1}, Ljava/lang/management/ThreadInfo;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 99
    invoke-virtual {p1}, Ljava/lang/management/ThreadInfo;->getLockedMonitors()[Ljava/lang/management/MonitorInfo;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 100
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 101
    aget-object v3, v0, v2

    .line 102
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    array-length v3, p1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, p1, v4

    .line 104
    invoke-virtual {v5}, Ljava/lang/management/MonitorInfo;->getLockedStackDepth()I

    move-result v6

    if-ne v6, v2, :cond_0

    .line 105
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "      - locked "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method


# virtual methods
.method checkForDeadlocks()V
    .locals 14

    .line 63
    iget-object v0, p0, Lorg/h2/util/ThreadDeadlockDetector;->threadBean:Ljava/lang/management/ThreadMXBean;

    invoke-interface {v0}, Ljava/lang/management/ThreadMXBean;->findDeadlockedThreads()[J

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 68
    :cond_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 69
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v3, "ThreadDeadlockDetector - deadlock found :"

    .line 71
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    iget-object v3, p0, Lorg/h2/util/ThreadDeadlockDetector;->threadBean:Ljava/lang/management/ThreadMXBean;

    const/4 v4, 0x1

    invoke-interface {v3, v0, v4, v4}, Ljava/lang/management/ThreadMXBean;->getThreadInfo([JZZ)[Ljava/lang/management/ThreadInfo;

    move-result-object v0

    .line 73
    sget-object v3, Lorg/h2/mvstore/db/MVTable;->WAITING_FOR_LOCK:Lorg/h2/util/DebuggingThreadLocal;

    invoke-virtual {v3}, Lorg/h2/util/DebuggingThreadLocal;->getSnapshotOfAllThreads()Ljava/util/HashMap;

    move-result-object v3

    .line 75
    sget-object v4, Lorg/h2/mvstore/db/MVTable;->EXCLUSIVE_LOCKS:Lorg/h2/util/DebuggingThreadLocal;

    invoke-virtual {v4}, Lorg/h2/util/DebuggingThreadLocal;->getSnapshotOfAllThreads()Ljava/util/HashMap;

    move-result-object v4

    .line 77
    sget-object v5, Lorg/h2/mvstore/db/MVTable;->SHARED_LOCKS:Lorg/h2/util/DebuggingThreadLocal;

    invoke-virtual {v5}, Lorg/h2/util/DebuggingThreadLocal;->getSnapshotOfAllThreads()Ljava/util/HashMap;

    move-result-object v5

    .line 79
    array-length v6, v0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v8, v0, v7

    .line 80
    invoke-static {v2, v8}, Lorg/h2/util/ThreadDeadlockDetector;->printThreadInfo(Ljava/io/PrintWriter;Ljava/lang/management/ThreadInfo;)V

    .line 81
    invoke-virtual {v8}, Ljava/lang/management/ThreadInfo;->getLockedSynchronizers()[Ljava/lang/management/LockInfo;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/management/ThreadInfo;->getThreadId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/management/ThreadInfo;->getThreadId()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/lang/management/ThreadInfo;->getThreadId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-static {v2, v9, v10, v11, v8}, Lorg/h2/util/ThreadDeadlockDetector;->printLockInfo(Ljava/io/PrintWriter;[Ljava/lang/management/LockInfo;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 90
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method
