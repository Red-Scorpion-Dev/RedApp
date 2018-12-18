.class public final synthetic Lorg/briarproject/briar/android/privategroup/list/-$$Lambda$GroupViewHolder$wLj5s-fWDGLuPGjfzFTGopnKJ2M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder$OnGroupRemoveClickListener;

.field private final synthetic f$1:Lorg/briarproject/briar/android/privategroup/list/GroupItem;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder$OnGroupRemoveClickListener;Lorg/briarproject/briar/android/privategroup/list/GroupItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/privategroup/list/-$$Lambda$GroupViewHolder$wLj5s-fWDGLuPGjfzFTGopnKJ2M;->f$0:Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder$OnGroupRemoveClickListener;

    iput-object p2, p0, Lorg/briarproject/briar/android/privategroup/list/-$$Lambda$GroupViewHolder$wLj5s-fWDGLuPGjfzFTGopnKJ2M;->f$1:Lorg/briarproject/briar/android/privategroup/list/GroupItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/-$$Lambda$GroupViewHolder$wLj5s-fWDGLuPGjfzFTGopnKJ2M;->f$0:Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder$OnGroupRemoveClickListener;

    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/list/-$$Lambda$GroupViewHolder$wLj5s-fWDGLuPGjfzFTGopnKJ2M;->f$1:Lorg/briarproject/briar/android/privategroup/list/GroupItem;

    invoke-static {v0, v1, p1}, Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;->lambda$bindView$0(Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder$OnGroupRemoveClickListener;Lorg/briarproject/briar/android/privategroup/list/GroupItem;Landroid/view/View;)V

    return-void
.end method
