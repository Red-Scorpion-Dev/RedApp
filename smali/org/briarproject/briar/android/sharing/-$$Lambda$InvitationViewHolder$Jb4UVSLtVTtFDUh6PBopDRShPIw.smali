.class public final synthetic Lorg/briarproject/briar/android/sharing/-$$Lambda$InvitationViewHolder$Jb4UVSLtVTtFDUh6PBopDRShPIw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener;

.field private final synthetic f$1:Lorg/briarproject/briar/api/sharing/InvitationItem;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener;Lorg/briarproject/briar/api/sharing/InvitationItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/sharing/-$$Lambda$InvitationViewHolder$Jb4UVSLtVTtFDUh6PBopDRShPIw;->f$0:Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener;

    iput-object p2, p0, Lorg/briarproject/briar/android/sharing/-$$Lambda$InvitationViewHolder$Jb4UVSLtVTtFDUh6PBopDRShPIw;->f$1:Lorg/briarproject/briar/api/sharing/InvitationItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/-$$Lambda$InvitationViewHolder$Jb4UVSLtVTtFDUh6PBopDRShPIw;->f$0:Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener;

    iget-object v1, p0, Lorg/briarproject/briar/android/sharing/-$$Lambda$InvitationViewHolder$Jb4UVSLtVTtFDUh6PBopDRShPIw;->f$1:Lorg/briarproject/briar/api/sharing/InvitationItem;

    invoke-static {v0, v1, p1}, Lorg/briarproject/briar/android/sharing/InvitationViewHolder;->lambda$onBind$1(Lorg/briarproject/briar/android/sharing/InvitationAdapter$InvitationClickListener;Lorg/briarproject/briar/api/sharing/InvitationItem;Landroid/view/View;)V

    return-void
.end method
