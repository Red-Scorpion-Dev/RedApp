.class public final synthetic Lorg/briarproject/briar/android/navdrawer/-$$Lambda$NavDrawerActivity$vBc4tdtaC7MdOCb4HWFw1KOSP34;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;

.field private final synthetic f$1:Lorg/briarproject/bramble/api/plugin/TransportId;

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;Lorg/briarproject/bramble/api/plugin/TransportId;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/navdrawer/-$$Lambda$NavDrawerActivity$vBc4tdtaC7MdOCb4HWFw1KOSP34;->f$0:Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;

    iput-object p2, p0, Lorg/briarproject/briar/android/navdrawer/-$$Lambda$NavDrawerActivity$vBc4tdtaC7MdOCb4HWFw1KOSP34;->f$1:Lorg/briarproject/bramble/api/plugin/TransportId;

    iput-boolean p3, p0, Lorg/briarproject/briar/android/navdrawer/-$$Lambda$NavDrawerActivity$vBc4tdtaC7MdOCb4HWFw1KOSP34;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/briarproject/briar/android/navdrawer/-$$Lambda$NavDrawerActivity$vBc4tdtaC7MdOCb4HWFw1KOSP34;->f$0:Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;

    iget-object v1, p0, Lorg/briarproject/briar/android/navdrawer/-$$Lambda$NavDrawerActivity$vBc4tdtaC7MdOCb4HWFw1KOSP34;->f$1:Lorg/briarproject/bramble/api/plugin/TransportId;

    iget-boolean v2, p0, Lorg/briarproject/briar/android/navdrawer/-$$Lambda$NavDrawerActivity$vBc4tdtaC7MdOCb4HWFw1KOSP34;->f$2:Z

    invoke-static {v0, v1, v2}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->lambda$setTransport$1(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;Lorg/briarproject/bramble/api/plugin/TransportId;Z)V

    return-void
.end method
