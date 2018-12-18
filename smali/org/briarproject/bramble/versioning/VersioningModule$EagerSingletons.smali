.class public Lorg/briarproject/bramble/versioning/VersioningModule$EagerSingletons;
.super Ljava/lang/Object;
.source "VersioningModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/versioning/VersioningModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EagerSingletons"
.end annotation


# instance fields
.field clientVersioningManager:Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;

.field clientVersioningValidator:Lorg/briarproject/bramble/versioning/ClientVersioningValidator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
