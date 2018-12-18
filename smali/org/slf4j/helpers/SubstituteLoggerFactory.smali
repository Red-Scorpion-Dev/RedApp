.class public Lorg/slf4j/helpers/SubstituteLoggerFactory;
.super Ljava/lang/Object;
.source "SubstituteLoggerFactory.java"

# interfaces
.implements Lorg/slf4j/ILoggerFactory;


# instance fields
.field final eventList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/slf4j/event/SubstituteLoggingEvent;",
            ">;"
        }
    .end annotation
.end field

.field final loggers:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/slf4j/helpers/SubstituteLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->loggers:Ljava/util/concurrent/ConcurrentMap;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->eventList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->loggers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 74
    iget-object v0, p0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->eventList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/slf4j/event/SubstituteLoggingEvent;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->eventList:Ljava/util/List;

    return-object v0
.end method

.method public getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;
    .locals 2

    .line 50
    iget-object v0, p0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->loggers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/slf4j/helpers/SubstituteLogger;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lorg/slf4j/helpers/SubstituteLogger;

    iget-object v1, p0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->eventList:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lorg/slf4j/helpers/SubstituteLogger;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 53
    iget-object v1, p0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->loggers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/slf4j/helpers/SubstituteLogger;

    if-eqz p1, :cond_0

    move-object v0, p1

    :cond_0
    return-object v0
.end method

.method public getLoggers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/slf4j/helpers/SubstituteLogger;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->loggers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
