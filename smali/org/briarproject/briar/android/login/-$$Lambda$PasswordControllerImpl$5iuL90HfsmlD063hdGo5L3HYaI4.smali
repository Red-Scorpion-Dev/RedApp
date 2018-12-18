.class public final synthetic Lorg/briarproject/briar/android/login/-$$Lambda$PasswordControllerImpl$5iuL90HfsmlD063hdGo5L3HYaI4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/login/PasswordControllerImpl;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Lorg/briarproject/briar/android/controller/handler/ResultHandler;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/login/PasswordControllerImpl;Ljava/lang/String;Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ResultHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/login/-$$Lambda$PasswordControllerImpl$5iuL90HfsmlD063hdGo5L3HYaI4;->f$0:Lorg/briarproject/briar/android/login/PasswordControllerImpl;

    iput-object p2, p0, Lorg/briarproject/briar/android/login/-$$Lambda$PasswordControllerImpl$5iuL90HfsmlD063hdGo5L3HYaI4;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/briarproject/briar/android/login/-$$Lambda$PasswordControllerImpl$5iuL90HfsmlD063hdGo5L3HYaI4;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lorg/briarproject/briar/android/login/-$$Lambda$PasswordControllerImpl$5iuL90HfsmlD063hdGo5L3HYaI4;->f$3:Lorg/briarproject/briar/android/controller/handler/ResultHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/briarproject/briar/android/login/-$$Lambda$PasswordControllerImpl$5iuL90HfsmlD063hdGo5L3HYaI4;->f$0:Lorg/briarproject/briar/android/login/PasswordControllerImpl;

    iget-object v1, p0, Lorg/briarproject/briar/android/login/-$$Lambda$PasswordControllerImpl$5iuL90HfsmlD063hdGo5L3HYaI4;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/briarproject/briar/android/login/-$$Lambda$PasswordControllerImpl$5iuL90HfsmlD063hdGo5L3HYaI4;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lorg/briarproject/briar/android/login/-$$Lambda$PasswordControllerImpl$5iuL90HfsmlD063hdGo5L3HYaI4;->f$3:Lorg/briarproject/briar/android/controller/handler/ResultHandler;

    invoke-static {v0, v1, v2, v3}, Lorg/briarproject/briar/android/login/PasswordControllerImpl;->lambda$changePassword$1(Lorg/briarproject/briar/android/login/PasswordControllerImpl;Ljava/lang/String;Ljava/lang/String;Lorg/briarproject/briar/android/controller/handler/ResultHandler;)V

    return-void
.end method
