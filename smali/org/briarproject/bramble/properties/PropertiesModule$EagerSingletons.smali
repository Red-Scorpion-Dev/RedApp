.class public Lorg/briarproject/bramble/properties/PropertiesModule$EagerSingletons;
.super Ljava/lang/Object;
.source "PropertiesModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/properties/PropertiesModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EagerSingletons"
.end annotation


# instance fields
.field transportPropertyManager:Lorg/briarproject/bramble/api/properties/TransportPropertyManager;

.field transportPropertyValidator:Lorg/briarproject/bramble/properties/TransportPropertyValidator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
