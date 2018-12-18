.class public Lorg/briarproject/bramble/identity/IdentityModule$EagerSingletons;
.super Ljava/lang/Object;
.source "IdentityModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/identity/IdentityModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EagerSingletons"
.end annotation


# instance fields
.field identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
