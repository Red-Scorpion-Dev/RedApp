.class public final synthetic Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupControllerImpl$yz7uGD7kAPVQ-eJiLI_OBNlTmhs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;

.field private final synthetic f$1:Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupControllerImpl$yz7uGD7kAPVQ-eJiLI_OBNlTmhs;->f$0:Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;

    iput-object p2, p0, Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupControllerImpl$yz7uGD7kAPVQ-eJiLI_OBNlTmhs;->f$1:Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupControllerImpl$yz7uGD7kAPVQ-eJiLI_OBNlTmhs;->f$0:Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;

    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/conversation/-$$Lambda$GroupControllerImpl$yz7uGD7kAPVQ-eJiLI_OBNlTmhs;->f$1:Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;->lambda$eventOccurred$0(Lorg/briarproject/briar/android/privategroup/conversation/GroupControllerImpl;Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageItem;)V

    return-void
.end method
