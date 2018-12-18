.class public Lorg/briarproject/briar/android/BriarService$BriarBinder;
.super Landroid/os/Binder;
.source "BriarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/android/BriarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BriarBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/briar/android/BriarService;


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/android/BriarService;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lorg/briarproject/briar/android/BriarService$BriarBinder;->this$0:Lorg/briarproject/briar/android/BriarService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lorg/briarproject/briar/android/BriarService;
    .locals 1

    .line 310
    iget-object v0, p0, Lorg/briarproject/briar/android/BriarService$BriarBinder;->this$0:Lorg/briarproject/briar/android/BriarService;

    return-object v0
.end method
