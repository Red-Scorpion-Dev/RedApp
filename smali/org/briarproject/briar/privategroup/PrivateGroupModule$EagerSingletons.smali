.class public Lorg/briarproject/briar/privategroup/PrivateGroupModule$EagerSingletons;
.super Ljava/lang/Object;
.source "PrivateGroupModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/privategroup/PrivateGroupModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EagerSingletons"
.end annotation


# instance fields
.field groupManager:Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

.field groupMessageValidator:Lorg/briarproject/briar/privategroup/GroupMessageValidator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
