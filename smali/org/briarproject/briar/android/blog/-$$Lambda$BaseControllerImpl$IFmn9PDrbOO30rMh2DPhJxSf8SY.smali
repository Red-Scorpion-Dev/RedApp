.class public final synthetic Lorg/briarproject/briar/android/blog/-$$Lambda$BaseControllerImpl$IFmn9PDrbOO30rMh2DPhJxSf8SY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/blog/BaseControllerImpl;

.field private final synthetic f$1:Lorg/briarproject/briar/android/blog/BlogPostItem;

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/blog/BaseControllerImpl;Lorg/briarproject/briar/android/blog/BlogPostItem;Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$BaseControllerImpl$IFmn9PDrbOO30rMh2DPhJxSf8SY;->f$0:Lorg/briarproject/briar/android/blog/BaseControllerImpl;

    iput-object p2, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$BaseControllerImpl$IFmn9PDrbOO30rMh2DPhJxSf8SY;->f$1:Lorg/briarproject/briar/android/blog/BlogPostItem;

    iput-object p3, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$BaseControllerImpl$IFmn9PDrbOO30rMh2DPhJxSf8SY;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$BaseControllerImpl$IFmn9PDrbOO30rMh2DPhJxSf8SY;->f$3:Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$BaseControllerImpl$IFmn9PDrbOO30rMh2DPhJxSf8SY;->f$0:Lorg/briarproject/briar/android/blog/BaseControllerImpl;

    iget-object v1, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$BaseControllerImpl$IFmn9PDrbOO30rMh2DPhJxSf8SY;->f$1:Lorg/briarproject/briar/android/blog/BlogPostItem;

    iget-object v2, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$BaseControllerImpl$IFmn9PDrbOO30rMh2DPhJxSf8SY;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lorg/briarproject/briar/android/blog/-$$Lambda$BaseControllerImpl$IFmn9PDrbOO30rMh2DPhJxSf8SY;->f$3:Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;

    invoke-static {v0, v1, v2, v3}, Lorg/briarproject/briar/android/blog/BaseControllerImpl;->lambda$repeatPost$5(Lorg/briarproject/briar/android/blog/BaseControllerImpl;Lorg/briarproject/briar/android/blog/BlogPostItem;Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ExceptionHandler;)V

    return-void
.end method
