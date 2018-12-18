.class public final synthetic Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListAdapter$kAL6Ao0lW0KDG5V1g1qgxdCGy3I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/forum/ForumListAdapter;

.field private final synthetic f$1:Lorg/briarproject/briar/android/forum/ForumListItem;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/forum/ForumListAdapter;Lorg/briarproject/briar/android/forum/ForumListItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListAdapter$kAL6Ao0lW0KDG5V1g1qgxdCGy3I;->f$0:Lorg/briarproject/briar/android/forum/ForumListAdapter;

    iput-object p2, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListAdapter$kAL6Ao0lW0KDG5V1g1qgxdCGy3I;->f$1:Lorg/briarproject/briar/android/forum/ForumListItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListAdapter$kAL6Ao0lW0KDG5V1g1qgxdCGy3I;->f$0:Lorg/briarproject/briar/android/forum/ForumListAdapter;

    iget-object v1, p0, Lorg/briarproject/briar/android/forum/-$$Lambda$ForumListAdapter$kAL6Ao0lW0KDG5V1g1qgxdCGy3I;->f$1:Lorg/briarproject/briar/android/forum/ForumListItem;

    invoke-static {v0, v1, p1}, Lorg/briarproject/briar/android/forum/ForumListAdapter;->lambda$onBindViewHolder$0(Lorg/briarproject/briar/android/forum/ForumListAdapter;Lorg/briarproject/briar/android/forum/ForumListItem;Landroid/view/View;)V

    return-void
.end method
