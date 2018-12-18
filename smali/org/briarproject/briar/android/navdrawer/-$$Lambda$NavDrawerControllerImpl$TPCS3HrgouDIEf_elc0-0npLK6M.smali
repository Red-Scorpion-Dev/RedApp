.class public final synthetic Lorg/briarproject/briar/android/navdrawer/-$$Lambda$NavDrawerControllerImpl$TPCS3HrgouDIEf_elc0-0npLK6M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;

.field private final synthetic f$1:Lorg/briarproject/briar/android/controller/handler/ResultHandler;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/navdrawer/-$$Lambda$NavDrawerControllerImpl$TPCS3HrgouDIEf_elc0-0npLK6M;->f$0:Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;

    iput-object p2, p0, Lorg/briarproject/briar/android/navdrawer/-$$Lambda$NavDrawerControllerImpl$TPCS3HrgouDIEf_elc0-0npLK6M;->f$1:Lorg/briarproject/briar/android/controller/handler/ResultHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/navdrawer/-$$Lambda$NavDrawerControllerImpl$TPCS3HrgouDIEf_elc0-0npLK6M;->f$0:Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;

    iget-object v1, p0, Lorg/briarproject/briar/android/navdrawer/-$$Lambda$NavDrawerControllerImpl$TPCS3HrgouDIEf_elc0-0npLK6M;->f$1:Lorg/briarproject/briar/android/controller/handler/ResultHandler;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;->lambda$shouldAskForDozeWhitelisting$3(Lorg/briarproject/briar/android/navdrawer/NavDrawerControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultHandler;)V

    return-void
.end method
