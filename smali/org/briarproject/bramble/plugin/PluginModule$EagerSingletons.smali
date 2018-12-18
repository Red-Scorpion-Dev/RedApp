.class public Lorg/briarproject/bramble/plugin/PluginModule$EagerSingletons;
.super Ljava/lang/Object;
.source "PluginModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/plugin/PluginModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EagerSingletons"
.end annotation


# instance fields
.field pluginManager:Lorg/briarproject/bramble/api/plugin/PluginManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
