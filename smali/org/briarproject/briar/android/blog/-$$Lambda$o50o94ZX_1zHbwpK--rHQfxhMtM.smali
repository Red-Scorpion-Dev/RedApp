.class public final synthetic Lorg/briarproject/briar/android/blog/-$$Lambda$o50o94ZX_1zHbwpK--rHQfxhMtM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/blog/RssFeedImportActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/blog/RssFeedImportActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$o50o94ZX_1zHbwpK--rHQfxhMtM;->f$0:Lorg/briarproject/briar/android/blog/RssFeedImportActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$o50o94ZX_1zHbwpK--rHQfxhMtM;->f$0:Lorg/briarproject/briar/android/blog/RssFeedImportActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->supportFinishAfterTransition()V

    return-void
.end method
