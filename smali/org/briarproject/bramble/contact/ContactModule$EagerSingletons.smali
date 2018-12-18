.class public Lorg/briarproject/bramble/contact/ContactModule$EagerSingletons;
.super Ljava/lang/Object;
.source "ContactModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/contact/ContactModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EagerSingletons"
.end annotation


# instance fields
.field contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
