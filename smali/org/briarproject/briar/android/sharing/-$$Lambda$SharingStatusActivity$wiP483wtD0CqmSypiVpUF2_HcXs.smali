.class public final synthetic Lorg/briarproject/briar/android/sharing/-$$Lambda$SharingStatusActivity$wiP483wtD0CqmSypiVpUF2_HcXs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/sharing/SharingStatusActivity;

.field private final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/sharing/SharingStatusActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/sharing/-$$Lambda$SharingStatusActivity$wiP483wtD0CqmSypiVpUF2_HcXs;->f$0:Lorg/briarproject/briar/android/sharing/SharingStatusActivity;

    iput-object p2, p0, Lorg/briarproject/briar/android/sharing/-$$Lambda$SharingStatusActivity$wiP483wtD0CqmSypiVpUF2_HcXs;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/-$$Lambda$SharingStatusActivity$wiP483wtD0CqmSypiVpUF2_HcXs;->f$0:Lorg/briarproject/briar/android/sharing/SharingStatusActivity;

    iget-object v1, p0, Lorg/briarproject/briar/android/sharing/-$$Lambda$SharingStatusActivity$wiP483wtD0CqmSypiVpUF2_HcXs;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/sharing/SharingStatusActivity;->lambda$displaySharedWith$1(Lorg/briarproject/briar/android/sharing/SharingStatusActivity;Ljava/util/List;)V

    return-void
.end method
