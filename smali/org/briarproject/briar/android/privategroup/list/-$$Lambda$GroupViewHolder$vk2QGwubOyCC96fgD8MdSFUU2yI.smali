.class public final synthetic Lorg/briarproject/briar/android/privategroup/list/-$$Lambda$GroupViewHolder$vk2QGwubOyCC96fgD8MdSFUU2yI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;

.field private final synthetic f$1:Lorg/briarproject/briar/android/privategroup/list/GroupItem;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lorg/briarproject/briar/android/privategroup/list/GroupItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/privategroup/list/-$$Lambda$GroupViewHolder$vk2QGwubOyCC96fgD8MdSFUU2yI;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lorg/briarproject/briar/android/privategroup/list/-$$Lambda$GroupViewHolder$vk2QGwubOyCC96fgD8MdSFUU2yI;->f$1:Lorg/briarproject/briar/android/privategroup/list/GroupItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/-$$Lambda$GroupViewHolder$vk2QGwubOyCC96fgD8MdSFUU2yI;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/list/-$$Lambda$GroupViewHolder$vk2QGwubOyCC96fgD8MdSFUU2yI;->f$1:Lorg/briarproject/briar/android/privategroup/list/GroupItem;

    invoke-static {v0, v1, p1}, Lorg/briarproject/briar/android/privategroup/list/GroupViewHolder;->lambda$bindView$1(Landroid/content/Context;Lorg/briarproject/briar/android/privategroup/list/GroupItem;Landroid/view/View;)V

    return-void
.end method
