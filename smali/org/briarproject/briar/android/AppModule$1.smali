.class Lorg/briarproject/briar/android/AppModule$1;
.super Ljava/lang/Object;
.source "AppModule.java"

# interfaces
.implements Lorg/briarproject/bramble/api/plugin/PluginConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/AppModule;->providePluginConfig(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lorg/briarproject/bramble/api/system/AndroidExecutor;Ljava/security/SecureRandom;Ljavax/net/SocketFactory;Lorg/briarproject/bramble/api/plugin/BackoffFactory;Landroid/app/Application;Lorg/briarproject/bramble/api/network/NetworkManager;Lorg/briarproject/bramble/api/system/LocationUtils;Lorg/briarproject/bramble/api/event/EventBus;Lorg/briarproject/bramble/api/system/ResourceProvider;Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;Lorg/briarproject/bramble/api/battery/BatteryManager;Lorg/briarproject/bramble/api/system/Clock;)Lorg/briarproject/bramble/api/plugin/PluginConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/briar/android/AppModule;

.field final synthetic val$duplex:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/AppModule;Ljava/util/Collection;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lorg/briarproject/briar/android/AppModule$1;->this$0:Lorg/briarproject/briar/android/AppModule;

    iput-object p2, p0, Lorg/briarproject/briar/android/AppModule$1;->val$duplex:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDuplexFactories()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/plugin/duplex/DuplexPluginFactory;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lorg/briarproject/briar/android/AppModule$1;->val$duplex:Ljava/util/Collection;

    return-object v0
.end method

.method public getSimplexFactories()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/plugin/simplex/SimplexPluginFactory;",
            ">;"
        }
    .end annotation

    .line 131
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public shouldPoll()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
