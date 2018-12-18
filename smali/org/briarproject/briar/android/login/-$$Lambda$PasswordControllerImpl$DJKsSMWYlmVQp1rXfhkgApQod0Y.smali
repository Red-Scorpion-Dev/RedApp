.class public final synthetic Lorg/briarproject/briar/android/login/-$$Lambda$PasswordControllerImpl$DJKsSMWYlmVQp1rXfhkgApQod0Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/login/PasswordControllerImpl;

.field private final synthetic f$1:Lorg/briarproject/briar/android/controller/handler/ResultHandler;

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/login/PasswordControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultHandler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/login/-$$Lambda$PasswordControllerImpl$DJKsSMWYlmVQp1rXfhkgApQod0Y;->f$0:Lorg/briarproject/briar/android/login/PasswordControllerImpl;

    iput-object p2, p0, Lorg/briarproject/briar/android/login/-$$Lambda$PasswordControllerImpl$DJKsSMWYlmVQp1rXfhkgApQod0Y;->f$1:Lorg/briarproject/briar/android/controller/handler/ResultHandler;

    iput-object p3, p0, Lorg/briarproject/briar/android/login/-$$Lambda$PasswordControllerImpl$DJKsSMWYlmVQp1rXfhkgApQod0Y;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/briarproject/briar/android/login/-$$Lambda$PasswordControllerImpl$DJKsSMWYlmVQp1rXfhkgApQod0Y;->f$0:Lorg/briarproject/briar/android/login/PasswordControllerImpl;

    iget-object v1, p0, Lorg/briarproject/briar/android/login/-$$Lambda$PasswordControllerImpl$DJKsSMWYlmVQp1rXfhkgApQod0Y;->f$1:Lorg/briarproject/briar/android/controller/handler/ResultHandler;

    iget-object v2, p0, Lorg/briarproject/briar/android/login/-$$Lambda$PasswordControllerImpl$DJKsSMWYlmVQp1rXfhkgApQod0Y;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/briarproject/briar/android/login/PasswordControllerImpl;->lambda$validatePassword$0(Lorg/briarproject/briar/android/login/PasswordControllerImpl;Lorg/briarproject/briar/android/controller/handler/ResultHandler;Ljava/lang/String;)V

    return-void
.end method
