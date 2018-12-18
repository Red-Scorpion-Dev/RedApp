.class public Lorg/slf4j/helpers/SubstituteLogger;
.super Ljava/lang/Object;
.source "SubstituteLogger.java"

# interfaces
.implements Lorg/slf4j/Logger;


# instance fields
.field private volatile _delegate:Lorg/slf4j/Logger;

.field private delegateEventAware:Ljava/lang/Boolean;

.field private eventList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/slf4j/event/SubstituteLoggingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private eventRecodingLogger:Lorg/slf4j/event/EventRecodingLogger;

.field private logMethodCache:Ljava/lang/reflect/Method;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/slf4j/event/SubstituteLoggingEvent;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/slf4j/helpers/SubstituteLogger;->name:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lorg/slf4j/helpers/SubstituteLogger;->eventList:Ljava/util/List;

    return-void
.end method

.method private getEventRecordingLogger()Lorg/slf4j/Logger;
    .locals 2

    .line 335
    iget-object v0, p0, Lorg/slf4j/helpers/SubstituteLogger;->eventRecodingLogger:Lorg/slf4j/event/EventRecodingLogger;

    if-nez v0, :cond_0

    .line 336
    new-instance v0, Lorg/slf4j/event/EventRecodingLogger;

    iget-object v1, p0, Lorg/slf4j/helpers/SubstituteLogger;->eventList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lorg/slf4j/event/EventRecodingLogger;-><init>(Lorg/slf4j/helpers/SubstituteLogger;Ljava/util/List;)V

    iput-object v0, p0, Lorg/slf4j/helpers/SubstituteLogger;->eventRecodingLogger:Lorg/slf4j/event/EventRecodingLogger;

    .line 338
    :cond_0
    iget-object v0, p0, Lorg/slf4j/helpers/SubstituteLogger;->eventRecodingLogger:Lorg/slf4j/event/EventRecodingLogger;

    return-object v0
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 122
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 134
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method delegate()Lorg/slf4j/Logger;
    .locals 1

    .line 330
    iget-object v0, p0, Lorg/slf4j/helpers/SubstituteLogger;->_delegate:Lorg/slf4j/Logger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/slf4j/helpers/SubstituteLogger;->_delegate:Lorg/slf4j/Logger;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/slf4j/helpers/SubstituteLogger;->getEventRecordingLogger()Lorg/slf4j/Logger;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 309
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 312
    :cond_1
    check-cast p1, Lorg/slf4j/helpers/SubstituteLogger;

    .line 314
    iget-object v2, p0, Lorg/slf4j/helpers/SubstituteLogger;->name:Ljava/lang/String;

    iget-object p1, p1, Lorg/slf4j/helpers/SubstituteLogger;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 278
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/slf4j/helpers/SubstituteLogger;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 322
    iget-object v0, p0, Lorg/slf4j/helpers/SubstituteLogger;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 182
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    .line 114
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public isDelegateEventAware()Z
    .locals 5

    .line 350
    iget-object v0, p0, Lorg/slf4j/helpers/SubstituteLogger;->delegateEventAware:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lorg/slf4j/helpers/SubstituteLogger;->delegateEventAware:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 354
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/slf4j/helpers/SubstituteLogger;->_delegate:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "log"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lorg/slf4j/event/LoggingEvent;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/slf4j/helpers/SubstituteLogger;->logMethodCache:Ljava/lang/reflect/Method;

    .line 355
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/slf4j/helpers/SubstituteLogger;->delegateEventAware:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 357
    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/slf4j/helpers/SubstituteLogger;->delegateEventAware:Ljava/lang/Boolean;

    .line 359
    :goto_0
    iget-object v0, p0, Lorg/slf4j/helpers/SubstituteLogger;->delegateEventAware:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isDelegateNOP()Z
    .locals 1

    .line 374
    iget-object v0, p0, Lorg/slf4j/helpers/SubstituteLogger;->_delegate:Lorg/slf4j/Logger;

    instance-of v0, v0, Lorg/slf4j/helpers/NOPLogger;

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 1

    .line 258
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    .line 162
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->delegate()Lorg/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public log(Lorg/slf4j/event/LoggingEvent;)V
    .locals 4

    .line 363
    invoke-virtual {p0}, Lorg/slf4j/helpers/SubstituteLogger;->isDelegateEventAware()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    :try_start_0
    iget-object v0, p0, Lorg/slf4j/helpers/SubstituteLogger;->logMethodCache:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/slf4j/helpers/SubstituteLogger;->_delegate:Lorg/slf4j/Logger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setDelegate(Lorg/slf4j/Logger;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lorg/slf4j/helpers/SubstituteLogger;->_delegate:Lorg/slf4j/Logger;

    return-void
.end method
