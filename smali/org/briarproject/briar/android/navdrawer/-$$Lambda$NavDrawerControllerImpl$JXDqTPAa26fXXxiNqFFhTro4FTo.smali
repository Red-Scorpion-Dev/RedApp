.class public final synthetic Lorg/briarproject/briar/android/navdrawer/-$$Lambda$NavDrawerControllerImpl$JXDqTPAa26fXXxiNqFFhTro4FTo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;

.field private final synthetic f$1:Lorg/briarproject/bramble/api/plugin/TransportId;

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;Lorg/briarproject/bramble/api/plugin/TransportId;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/navdrawer/-$$Lambda$NavDrawerControllerImpl$JXDqTPAa26fXXxiNqFFhTro4FTo;->f$0:Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;

    iput-object p2, p0, Lorg/briarproject/briar/android/navdrawer/-$$Lambda$NavDrawerControllerImpl$JXDqTPAa26fXXxiNqFFhTro4FTo;->f$1:Lorg/briarproject/bramble/api/plugin/TransportId;

    iput-boolean p3, p0, Lorg/briarproject/briar/android/navdrawer/-$$Lambda$NavDrawerControllerImpl$JXDqTPAa26fXXxiNqFFhTro4FTo;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/briarproject/briar/android/navdrawer/-$$Lambda$NavDrawerControllerImpl$JXDqTPAa26fXXxiNqFFhTro4FTo;->f$0:Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;

    iget-object v1, p0, Lorg/briarproject/briar/android/navdrawer/-$$Lambda$NavDrawerControllerImpl$JXDqTPAa26fXXxiNqFFhTro4FTo;->f$1:Lorg/briarproject/bramble/api/plugin/TransportId;

    iget-boolean v2, p0, Lorg/briarproject/briar/android/navdrawer/-$$Lambda$NavDrawerControllerImpl$JXDqTPAa26fXXxiNqFFhTro4FTo;->f$2:Z

    invoke-static {v0, v1, v2}, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;->lambda$transportStateUpdate$0(Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;Lorg/briarproject/bramble/api/plugin/TransportId;Z)V

    return-void
.end method
