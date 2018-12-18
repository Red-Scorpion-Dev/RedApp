.class public final Lorg/slf4j/LoggerFactory;
.super Ljava/lang/Object;
.source "LoggerFactory.java"


# static fields
.field private static final API_COMPATIBILITY_LIST:[Ljava/lang/String;

.field static DETECT_LOGGER_NAME_MISMATCH:Z

.field static INITIALIZATION_STATE:I

.field static NOP_FALLBACK_FACTORY:Lorg/slf4j/helpers/NOPLoggerFactory;

.field private static STATIC_LOGGER_BINDER_PATH:Ljava/lang/String;

.field static SUBST_FACTORY:Lorg/slf4j/helpers/SubstituteLoggerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 84
    new-instance v0, Lorg/slf4j/helpers/SubstituteLoggerFactory;

    invoke-direct {v0}, Lorg/slf4j/helpers/SubstituteLoggerFactory;-><init>()V

    sput-object v0, Lorg/slf4j/LoggerFactory;->SUBST_FACTORY:Lorg/slf4j/helpers/SubstituteLoggerFactory;

    .line 85
    new-instance v0, Lorg/slf4j/helpers/NOPLoggerFactory;

    invoke-direct {v0}, Lorg/slf4j/helpers/NOPLoggerFactory;-><init>()V

    sput-object v0, Lorg/slf4j/LoggerFactory;->NOP_FALLBACK_FACTORY:Lorg/slf4j/helpers/NOPLoggerFactory;

    const-string v0, "slf4j.detectLoggerNameMismatch"

    .line 91
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->safeGetBooleanSystemProperty(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/slf4j/LoggerFactory;->DETECT_LOGGER_NAME_MISMATCH:Z

    const/4 v0, 0x2

    .line 100
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1.6"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "1.7"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lorg/slf4j/LoggerFactory;->API_COMPATIBILITY_LIST:[Ljava/lang/String;

    const-string v0, "org/slf4j/impl/StaticLoggerBinder.class"

    .line 259
    sput-object v0, Lorg/slf4j/LoggerFactory;->STATIC_LOGGER_BINDER_PATH:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final bind()V
    .locals 3

    .line 140
    :try_start_0
    invoke-static {}, Lorg/slf4j/LoggerFactory;->findPossibleStaticLoggerBinderPathSet()Ljava/util/Set;

    move-result-object v0

    .line 141
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->reportMultipleBindingAmbiguity(Ljava/util/Set;)V

    .line 143
    invoke-static {}, Lorg/slf4j/impl/StaticLoggerBinder;->getSingleton()Lorg/slf4j/impl/StaticLoggerBinder;

    const/4 v1, 0x3

    .line 144
    sput v1, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    .line 145
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->reportActualBinding(Ljava/util/Set;)V

    .line 146
    invoke-static {}, Lorg/slf4j/LoggerFactory;->fixSubstitutedLoggers()V

    .line 147
    invoke-static {}, Lorg/slf4j/LoggerFactory;->playRecordedEvents()V

    .line 148
    sget-object v0, Lorg/slf4j/LoggerFactory;->SUBST_FACTORY:Lorg/slf4j/helpers/SubstituteLoggerFactory;

    invoke-virtual {v0}, Lorg/slf4j/helpers/SubstituteLoggerFactory;->clear()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 170
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->failedBinding(Ljava/lang/Throwable;)V

    .line 171
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected initialization failure"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 161
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "org.slf4j.impl.StaticLoggerBinder.getSingleton()"

    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 163
    sput v1, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    const-string v1, "slf4j-api 1.6.x (or later) is incompatible with this binding."

    .line 164
    invoke-static {v1}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    const-string v1, "Your binding is version 1.5.5 or earlier."

    .line 165
    invoke-static {v1}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    const-string v1, "Upgrade your binding to version 1.6.x."

    .line 166
    invoke-static {v1}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 168
    :cond_0
    throw v0

    :catch_2
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->messageContainsOrgSlf4jImplStaticLoggerBinder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    .line 152
    sput v0, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    const-string v0, "Failed to load class \"org.slf4j.impl.StaticLoggerBinder\"."

    .line 153
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    const-string v0, "Defaulting to no-operation (NOP) logger implementation"

    .line 154
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    const-string v0, "See http://www.slf4j.org/codes.html#StaticLoggerBinder for further details."

    .line 155
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->failedBinding(Ljava/lang/Throwable;)V

    .line 158
    throw v0
.end method

.method private static emitReplayWarning(I)V
    .locals 2

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A number ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") of logging calls during the initialization phase have been intercepted and are"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    const-string p0, "now being replayed. These are suject to the filtering rules of the underlying logging system."

    .line 227
    invoke-static {p0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    const-string p0, "See also http://www.slf4j.org/codes.html#replay"

    .line 228
    invoke-static {p0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    return-void
.end method

.method private static emitSubstitutionWarning()V
    .locals 1

    const-string v0, "The following set of substitute loggers may have been accessed"

    .line 218
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    const-string v0, "during the initialization phase. Logging calls during this"

    .line 219
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    const-string v0, "phase were not honored. However, subsequent logging calls to these"

    .line 220
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    const-string v0, "loggers will work as normally expected."

    .line 221
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    const-string v0, "See also http://www.slf4j.org/codes.html#substituteLogger"

    .line 222
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    return-void
.end method

.method static failedBinding(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x2

    .line 176
    sput v0, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    const-string v0, "Failed to instantiate SLF4J LoggerFactory"

    .line 177
    invoke-static {v0, p0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static findPossibleStaticLoggerBinderPathSet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .line 264
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 266
    :try_start_0
    const-class v1, Lorg/slf4j/LoggerFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-nez v1, :cond_0

    .line 269
    sget-object v1, Lorg/slf4j/LoggerFactory;->STATIC_LOGGER_BINDER_PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/ClassLoader;->getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    goto :goto_0

    .line 271
    :cond_0
    sget-object v2, Lorg/slf4j/LoggerFactory;->STATIC_LOGGER_BINDER_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    .line 273
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 274
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    .line 275
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Error getting resources from path"

    .line 278
    invoke-static {v2, v1}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-object v0
.end method

.method private static final fixSubstitutedLoggers()V
    .locals 3

    .line 205
    sget-object v0, Lorg/slf4j/LoggerFactory;->SUBST_FACTORY:Lorg/slf4j/helpers/SubstituteLoggerFactory;

    invoke-virtual {v0}, Lorg/slf4j/helpers/SubstituteLoggerFactory;->getLoggers()Ljava/util/List;

    move-result-object v0

    .line 207
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 211
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/slf4j/helpers/SubstituteLogger;

    .line 212
    invoke-virtual {v1}, Lorg/slf4j/helpers/SubstituteLogger;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 213
    invoke-virtual {v1, v2}, Lorg/slf4j/helpers/SubstituteLogger;->setDelegate(Lorg/slf4j/Logger;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getILoggerFactory()Lorg/slf4j/ILoggerFactory;
    .locals 2

    .line 374
    sget v0, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    if-nez v0, :cond_1

    .line 375
    const-class v0, Lorg/slf4j/LoggerFactory;

    monitor-enter v0

    .line 376
    :try_start_0
    sget v1, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 377
    sput v1, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    .line 378
    invoke-static {}, Lorg/slf4j/LoggerFactory;->performInitialization()V

    .line 380
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 383
    :cond_1
    :goto_0
    sget v0, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    packed-switch v0, :pswitch_data_0

    .line 395
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unreachable code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :pswitch_0
    sget-object v0, Lorg/slf4j/LoggerFactory;->NOP_FALLBACK_FACTORY:Lorg/slf4j/helpers/NOPLoggerFactory;

    return-object v0

    .line 385
    :pswitch_1
    invoke-static {}, Lorg/slf4j/impl/StaticLoggerBinder;->getSingleton()Lorg/slf4j/impl/StaticLoggerBinder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/slf4j/impl/StaticLoggerBinder;->getLoggerFactory()Lorg/slf4j/ILoggerFactory;

    move-result-object v0

    return-object v0

    .line 389
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "org.slf4j.LoggerFactory could not be successfully initialized. See also http://www.slf4j.org/codes.html#unsuccessfulInit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :pswitch_3
    sget-object v0, Lorg/slf4j/LoggerFactory;->SUBST_FACTORY:Lorg/slf4j/helpers/SubstituteLoggerFactory;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/slf4j/Logger;"
        }
    .end annotation

    .line 349
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 350
    sget-boolean v1, Lorg/slf4j/LoggerFactory;->DETECT_LOGGER_NAME_MISMATCH:Z

    if-eqz v1, :cond_0

    .line 351
    invoke-static {}, Lorg/slf4j/helpers/Util;->getCallingClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 352
    invoke-static {p0, v1}, Lorg/slf4j/LoggerFactory;->nonMatchingClasses(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Detected logger name mismatch. Given name: \"%s\"; computed name: \"%s\"."

    const/4 v2, 0x2

    .line 353
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0}, Lorg/slf4j/Logger;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    const-string p0, "See http://www.slf4j.org/codes.html#loggerNameMismatch for an explanation"

    .line 355
    invoke-static {p0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;
    .locals 1

    .line 328
    invoke-static {}, Lorg/slf4j/LoggerFactory;->getILoggerFactory()Lorg/slf4j/ILoggerFactory;

    move-result-object v0

    .line 329
    invoke-interface {v0, p0}, Lorg/slf4j/ILoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object p0

    return-object p0
.end method

.method private static isAmbiguousStaticLoggerBinderPathSet(Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/net/URL;",
            ">;)Z"
        }
    .end annotation

    .line 284
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isAndroid()Z
    .locals 2

    const-string v0, "java.vendor.url"

    .line 308
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->safeGetSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 311
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static messageContainsOrgSlf4jImplStaticLoggerBinder(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "org/slf4j/impl/StaticLoggerBinder"

    .line 131
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const-string v1, "org.slf4j.impl.StaticLoggerBinder"

    .line 133
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method private static nonMatchingClasses(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 362
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static final performInitialization()V
    .locals 2

    .line 122
    invoke-static {}, Lorg/slf4j/LoggerFactory;->bind()V

    .line 123
    sget v0, Lorg/slf4j/LoggerFactory;->INITIALIZATION_STATE:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 124
    invoke-static {}, Lorg/slf4j/LoggerFactory;->versionSanityCheck()V

    :cond_0
    return-void
.end method

.method private static playRecordedEvents()V
    .locals 5

    .line 181
    sget-object v0, Lorg/slf4j/LoggerFactory;->SUBST_FACTORY:Lorg/slf4j/helpers/SubstituteLoggerFactory;

    invoke-virtual {v0}, Lorg/slf4j/helpers/SubstituteLoggerFactory;->getEventList()Ljava/util/List;

    move-result-object v0

    .line 183
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 187
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 188
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/slf4j/event/SubstituteLoggingEvent;

    .line 189
    invoke-virtual {v2}, Lorg/slf4j/event/SubstituteLoggingEvent;->getLogger()Lorg/slf4j/helpers/SubstituteLogger;

    move-result-object v3

    .line 190
    invoke-virtual {v3}, Lorg/slf4j/helpers/SubstituteLogger;->isDelegateNOP()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    .line 192
    :cond_1
    invoke-virtual {v3}, Lorg/slf4j/helpers/SubstituteLogger;->isDelegateEventAware()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v1, :cond_2

    .line 194
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Lorg/slf4j/LoggerFactory;->emitReplayWarning(I)V

    .line 195
    :cond_2
    invoke-virtual {v3, v2}, Lorg/slf4j/helpers/SubstituteLogger;->log(Lorg/slf4j/event/LoggingEvent;)V

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    .line 198
    invoke-static {}, Lorg/slf4j/LoggerFactory;->emitSubstitutionWarning()V

    .line 199
    :cond_4
    invoke-virtual {v3}, Lorg/slf4j/helpers/SubstituteLogger;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method private static reportActualBinding(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/net/URL;",
            ">;)V"
        }
    .end annotation

    .line 315
    invoke-static {p0}, Lorg/slf4j/LoggerFactory;->isAmbiguousStaticLoggerBinderPathSet(Ljava/util/Set;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 316
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Actual binding is of type ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/slf4j/impl/StaticLoggerBinder;->getSingleton()Lorg/slf4j/impl/StaticLoggerBinder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/slf4j/impl/StaticLoggerBinder;->getLoggerFactoryClassStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static reportMultipleBindingAmbiguity(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/net/URL;",
            ">;)V"
        }
    .end annotation

    .line 293
    invoke-static {}, Lorg/slf4j/LoggerFactory;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 298
    :cond_0
    invoke-static {p0}, Lorg/slf4j/LoggerFactory;->isAmbiguousStaticLoggerBinderPathSet(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Class path contains multiple SLF4J bindings."

    .line 299
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    .line 300
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found binding in ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "See http://www.slf4j.org/codes.html#multiple_bindings for an explanation."

    .line 303
    invoke-static {p0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private static final versionSanityCheck()V
    .locals 6

    .line 233
    :try_start_0
    sget-object v0, Lorg/slf4j/impl/StaticLoggerBinder;->REQUESTED_API_VERSION:Ljava/lang/String;

    .line 236
    sget-object v1, Lorg/slf4j/LoggerFactory;->API_COMPATIBILITY_LIST:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, v1, v3

    .line 237
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The requested version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " by your slf4j binding is not compatible with "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/slf4j/LoggerFactory;->API_COMPATIBILITY_LIST:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V

    const-string v0, "See http://www.slf4j.org/codes.html#version_mismatch for further details."

    .line 244
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Unexpected problem occured during version sanity check"

    .line 253
    invoke-static {v1, v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_1
    :cond_2
    :goto_1
    return-void
.end method
