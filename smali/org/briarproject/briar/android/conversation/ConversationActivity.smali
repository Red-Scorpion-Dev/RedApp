.class public Lorg/briarproject/briar/android/conversation/ConversationActivity;
.super Lorg/briarproject/briar/android/activity/BriarActivity;
.source "ConversationActivity.java"

# interfaces
.implements Lorg/briarproject/bramble/api/event/EventListener;
.implements Lorg/briarproject/briar/android/conversation/ConversationListener;
.implements Lorg/briarproject/briar/android/conversation/ConversationVisitor$TextCache;
.implements Lorg/briarproject/briar/android/view/TextInputView$TextInputListener;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field public static final CONTACT_ID:Ljava/lang/String; = "briar.CONTACT_ID"

.field private static final LOG:Ljava/util/logging/Logger;

.field private static final SHOW_ONBOARDING_INTRODUCTION:Ljava/lang/String; = "showOnboardingIntroduction"


# instance fields
.field private adapter:Lorg/briarproject/briar/android/conversation/ConversationAdapter;

.field volatile blogSharingManager:Lorg/briarproject/briar/api/blog/BlogSharingManager;

.field connectionRegistry:Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

.field private volatile contactId:Lorg/briarproject/bramble/api/contact/ContactId;

.field volatile contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

.field private final contactNameObserver:Landroid/arch/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/Observer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field volatile conversationManager:Lorg/briarproject/briar/api/conversation/ConversationManager;

.field cryptoExecutor:Ljava/util/concurrent/Executor;
    .annotation runtime Lorg/briarproject/bramble/api/crypto/CryptoExecutor;
    .end annotation
.end field

.field volatile eventBus:Lorg/briarproject/bramble/api/event/EventBus;

.field volatile forumSharingManager:Lorg/briarproject/briar/api/forum/ForumSharingManager;

.field volatile groupInvitationManager:Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;

.field volatile introductionManager:Lorg/briarproject/briar/api/introduction/IntroductionManager;

.field private list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

.field private volatile messagingGroupId:Lorg/briarproject/bramble/api/sync/GroupId;

.field volatile messagingManager:Lorg/briarproject/briar/api/messaging/MessagingManager;

.field notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

.field volatile privateMessageFactory:Lorg/briarproject/briar/api/messaging/PrivateMessageFactory;

.field volatile settingsManager:Lorg/briarproject/bramble/api/settings/SettingsManager;

.field private final textCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private textInputView:Lorg/briarproject/briar/android/view/TextInputView;

.field private toolbar:Landroid/support/v7/widget/Toolbar;

.field private toolbarAvatar:Lde/hdodenhof/circleimageview/CircleImageView;

.field private toolbarStatus:Landroid/widget/ImageView;

.field private toolbarTitle:Landroid/widget/TextView;

.field private viewModel:Lorg/briarproject/briar/android/conversation/ConversationViewModel;

.field viewModelFactory:Landroid/arch/lifecycle/ViewModelProvider$Factory;

.field private visitor:Lorg/briarproject/briar/android/conversation/ConversationVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 122
    const-class v0, Lorg/briarproject/briar/android/conversation/ConversationActivity;

    .line 123
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 116
    invoke-direct {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;-><init>()V

    .line 135
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->textCache:Ljava/util/Map;

    .line 175
    new-instance v0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$omy4ItjCVy9O-jplXQ6Pr_LGzsk;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$omy4ItjCVy9O-jplXQ6Pr_LGzsk;-><init>(Lorg/briarproject/briar/android/conversation/ConversationActivity;)V

    iput-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->contactNameObserver:Landroid/arch/lifecycle/Observer;

    return-void
.end method

.method private addConversationItem(Lorg/briarproject/briar/android/conversation/ConversationItem;)V
    .locals 1

    .line 447
    new-instance v0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$IL6Wk2C2remSf3GqnR8VGXOpxJM;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$IL6Wk2C2remSf3GqnR8VGXOpxJM;-><init>(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/briar/android/conversation/ConversationItem;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method private askToRemoveContact()V
    .locals 3

    .line 548
    new-instance v0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$Vbe6IRfSalpAB8ZKOAQ0JtbIVi4;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$Vbe6IRfSalpAB8ZKOAQ0JtbIVi4;-><init>(Lorg/briarproject/briar/android/conversation/ConversationActivity;)V

    .line 550
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    const v2, 0x7f1200ca

    invoke-direct {v1, p0, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f110092

    .line 553
    invoke-virtual {p0, v2}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const v2, 0x7f11008e

    .line 554
    invoke-virtual {p0, v2}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const v2, 0x7f110088

    .line 555
    invoke-virtual {v1, v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f110062

    const/4 v2, 0x0

    .line 556
    invoke-virtual {v1, v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 557
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void
.end method

.method private createItems(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/briarproject/briar/android/conversation/ConversationItem;",
            ">;"
        }
    .end annotation

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 369
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;

    .line 370
    iget-object v2, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->visitor:Lorg/briarproject/briar/android/conversation/ConversationVisitor;

    invoke-virtual {v1, v2}, Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;->accept(Lorg/briarproject/briar/api/conversation/ConversationMessageVisitor;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private createMessage(Ljava/lang/String;J)V
    .locals 2

    .line 517
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->cryptoExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$IY2xuamHNo68oU3fqmWi_rMG7qQ;

    invoke-direct {v1, p0, p2, p3, p1}, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$IY2xuamHNo68oU3fqmWi_rMG7qQ;-><init>(Lorg/briarproject/briar/android/conversation/ConversationActivity;JLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private displayContactOnlineStatus()V
    .locals 1

    .line 308
    new-instance v0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$CEWT3ilTx46w4TaimHy5iTCaXV0;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$CEWT3ilTx46w4TaimHy5iTCaXV0;-><init>(Lorg/briarproject/briar/android/conversation/ConversationActivity;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method private displayMessageText(Lorg/briarproject/bramble/api/sync/MessageId;Ljava/lang/String;)V
    .locals 1

    .line 388
    new-instance v0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$eHmsiKLQPg8M4-kuAYRdFT5KG4E;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$eHmsiKLQPg8M4-kuAYRdFT5KG4E;-><init>(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/bramble/api/sync/MessageId;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method private displayMessages(ILjava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;",
            ">;)V"
        }
    .end annotation

    .line 344
    new-instance v0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$YrFNfEuaeTiiYd0iCDWHzhQXax0;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$YrFNfEuaeTiiYd0iCDWHzhQXax0;-><init>(Lorg/briarproject/briar/android/conversation/ConversationActivity;ILjava/util/Collection;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method private enableAliasActionIfAvailable(Landroid/view/MenuItem;)V
    .locals 2

    .line 600
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->viewModel:Lorg/briarproject/briar/android/conversation/ConversationViewModel;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/conversation/ConversationViewModel;->getContact()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$D9X1Y_AyNvcpOQRTOnd5FAM2L6Q;

    invoke-direct {v1, p1}, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$D9X1Y_AyNvcpOQRTOnd5FAM2L6Q;-><init>(Landroid/view/MenuItem;)V

    invoke-static {v0, p0, v1}, Lorg/briarproject/briar/android/util/UiUtils;->observeOnce(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    return-void
.end method

.method private enableIntroductionAction(Landroid/view/MenuItem;)V
    .locals 1

    .line 604
    new-instance v0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$4zlhFq6vx2GZZdAXyHmByfPx3cc;

    invoke-direct {v0, p1}, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$4zlhFq6vx2GZZdAXyHmByfPx3cc;-><init>(Landroid/view/MenuItem;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method private enableIntroductionActionIfAvailable(Landroid/view/MenuItem;)V
    .locals 1

    .line 582
    new-instance v0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$vuo7tth0yV86aHBpb-9ozYkr_-k;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$vuo7tth0yV86aHBpb-9ozYkr_-k;-><init>(Lorg/briarproject/briar/android/conversation/ConversationActivity;Landroid/view/MenuItem;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private finishAfterContactRemoved()V
    .locals 1

    .line 573
    new-instance v0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$Gf1vB_HB_ProI2E9OPPtpxDX_qo;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$Gf1vB_HB_ProI2E9OPPtpxDX_qo;-><init>(Lorg/briarproject/briar/android/conversation/ConversationActivity;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getMinTimestampForNewMessage()J
    .locals 4

    .line 499
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->adapter:Lorg/briarproject/briar/android/conversation/ConversationAdapter;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/conversation/ConversationAdapter;->getLastItem()Lorg/briarproject/briar/android/conversation/ConversationItem;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 500
    :cond_0
    invoke-virtual {v0}, Lorg/briarproject/briar/android/conversation/ConversationItem;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method private introductionOnboardingSeen()V
    .locals 1

    .line 640
    new-instance v0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$C_l9B8GVeA6hsVI_5vXY7oJ-z-s;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$C_l9B8GVeA6hsVI_5vXY7oJ-z-s;-><init>(Lorg/briarproject/briar/android/conversation/ConversationActivity;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$addConversationItem$9(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/briar/android/conversation/ConversationItem;)V
    .locals 1

    .line 448
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->adapter:Lorg/briarproject/briar/android/conversation/ConversationAdapter;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/conversation/ConversationAdapter;->incrementRevision()V

    .line 449
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->adapter:Lorg/briarproject/briar/android/conversation/ConversationAdapter;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/conversation/ConversationAdapter;->add(Ljava/lang/Object;)V

    .line 451
    iget-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->adapter:Lorg/briarproject/briar/android/conversation/ConversationAdapter;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/conversation/ConversationAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public static synthetic lambda$askToRemoveContact$16(Lorg/briarproject/briar/android/conversation/ConversationActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 549
    invoke-direct {p0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->removeContact()V

    return-void
.end method

.method public static synthetic lambda$createMessage$14(Lorg/briarproject/briar/android/conversation/ConversationActivity;JLjava/lang/String;)V
    .locals 6

    .line 520
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->privateMessageFactory:Lorg/briarproject/briar/api/messaging/PrivateMessageFactory;

    iget-object v1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->messagingGroupId:Lorg/briarproject/bramble/api/sync/GroupId;

    .line 521
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-wide v2, p1

    move-object v4, p3

    .line 520
    invoke-interface/range {v0 .. v5}, Lorg/briarproject/briar/api/messaging/PrivateMessageFactory;->createPrivateMessage(Lorg/briarproject/bramble/api/sync/GroupId;JLjava/lang/String;Ljava/util/List;)Lorg/briarproject/briar/api/messaging/PrivateMessage;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->storeMessage(Lorg/briarproject/briar/api/messaging/PrivateMessage;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 523
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static synthetic lambda$displayContactOnlineStatus$4(Lorg/briarproject/briar/android/conversation/ConversationActivity;)V
    .locals 2

    .line 309
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->connectionRegistry:Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;

    iget-object v1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/plugin/ConnectionRegistry;->isConnected(Lorg/briarproject/bramble/api/contact/ContactId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->toolbarStatus:Landroid/widget/ImageView;

    const v1, 0x7f080068

    .line 311
    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 310
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 313
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->toolbarStatus:Landroid/widget/ImageView;

    const v1, 0x7f11014a

    .line 314
    invoke-virtual {p0, v1}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 316
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->toolbarStatus:Landroid/widget/ImageView;

    const v1, 0x7f080067

    .line 317
    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 316
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 319
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->toolbarStatus:Landroid/widget/ImageView;

    const v1, 0x7f110146

    .line 320
    invoke-virtual {p0, v1}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$displayMessageText$8(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/bramble/api/sync/MessageId;Ljava/lang/String;)V
    .locals 4

    .line 389
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->textCache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->adapter:Lorg/briarproject/briar/android/conversation/ConversationAdapter;

    .line 391
    invoke-virtual {v0}, Lorg/briarproject/briar/android/conversation/ConversationAdapter;->getMessageItems()Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 392
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 393
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/briar/android/conversation/ConversationItem;

    .line 394
    invoke-virtual {v2}, Lorg/briarproject/briar/android/conversation/ConversationItem;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/briarproject/bramble/api/sync/MessageId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 395
    invoke-virtual {v2, p2}, Lorg/briarproject/briar/android/conversation/ConversationItem;->setText(Ljava/lang/String;)V

    .line 396
    iget-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->adapter:Lorg/briarproject/briar/android/conversation/ConversationAdapter;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/briarproject/briar/android/conversation/ConversationAdapter;->notifyItemChanged(I)V

    .line 397
    iget-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    iget-object p2, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->adapter:Lorg/briarproject/briar/android/conversation/ConversationAdapter;

    invoke-virtual {p2}, Lorg/briarproject/briar/android/conversation/ConversationAdapter;->getItemCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->scrollToPosition(I)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic lambda$displayMessages$6(Lorg/briarproject/briar/android/conversation/ConversationActivity;ILjava/util/Collection;)V
    .locals 1

    .line 345
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->adapter:Lorg/briarproject/briar/android/conversation/ConversationAdapter;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/conversation/ConversationAdapter;->getRevision()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 346
    iget-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->adapter:Lorg/briarproject/briar/android/conversation/ConversationAdapter;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/conversation/ConversationAdapter;->incrementRevision()V

    .line 347
    iget-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->textInputView:Lorg/briarproject/briar/android/view/TextInputView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/briarproject/briar/android/view/TextInputView;->setSendButtonEnabled(Z)V

    .line 348
    invoke-direct {p0, p2}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->createItems(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 349
    iget-object p2, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->adapter:Lorg/briarproject/briar/android/conversation/ConversationAdapter;

    invoke-virtual {p2, p1}, Lorg/briarproject/briar/android/conversation/ConversationAdapter;->addAll(Ljava/util/Collection;)V

    .line 350
    iget-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->showData()V

    .line 352
    iget-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    iget-object p2, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->adapter:Lorg/briarproject/briar/android/conversation/ConversationAdapter;

    invoke-virtual {p2}, Lorg/briarproject/briar/android/conversation/ConversationAdapter;->getItemCount()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->scrollToPosition(I)V

    goto :goto_0

    .line 354
    :cond_0
    sget-object p1, Lorg/briarproject/briar/android/conversation/ConversationActivity;->LOG:Ljava/util/logging/Logger;

    const-string p2, "Concurrent update, reloading"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 355
    invoke-direct {p0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->loadMessages()V

    :goto_0
    return-void
.end method

.method static synthetic lambda$enableAliasActionIfAvailable$20(Landroid/view/MenuItem;Lorg/briarproject/bramble/api/contact/Contact;)V
    .locals 0

    const/4 p1, 0x1

    .line 600
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void
.end method

.method static synthetic lambda$enableIntroductionAction$21(Landroid/view/MenuItem;)V
    .locals 1

    const/4 v0, 0x1

    .line 604
    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public static synthetic lambda$enableIntroductionActionIfAvailable$19(Lorg/briarproject/briar/android/conversation/ConversationActivity;Landroid/view/MenuItem;)V
    .locals 2

    .line 584
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/contact/ContactManager;->getActiveContacts()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 585
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->enableIntroductionAction(Landroid/view/MenuItem;)V

    .line 586
    iget-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->settingsManager:Lorg/briarproject/bramble/api/settings/SettingsManager;

    const-string v0, "android-ui"

    .line 587
    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/settings/SettingsManager;->getSettings(Ljava/lang/String;)Lorg/briarproject/bramble/api/settings/Settings;

    move-result-object p1

    const-string v0, "showOnboardingIntroduction"

    .line 588
    invoke-virtual {p1, v0, v1}, Lorg/briarproject/bramble/api/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 590
    invoke-direct {p0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->showIntroductionOnboarding()V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 594
    sget-object v0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic lambda$finishAfterContactRemoved$18(Lorg/briarproject/briar/android/conversation/ConversationActivity;)V
    .locals 2

    const v0, 0x7f110079

    .line 574
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 575
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 576
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 577
    invoke-virtual {p0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->supportFinishAfterTransition()V

    return-void
.end method

.method public static synthetic lambda$introductionOnboardingSeen$24(Lorg/briarproject/briar/android/conversation/ConversationActivity;)V
    .locals 3

    .line 642
    :try_start_0
    new-instance v0, Lorg/briarproject/bramble/api/settings/Settings;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/settings/Settings;-><init>()V

    const-string v1, "showOnboardingIntroduction"

    const/4 v2, 0x0

    .line 643
    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/settings/Settings;->putBoolean(Ljava/lang/String;Z)V

    .line 644
    iget-object v1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->settingsManager:Lorg/briarproject/bramble/api/settings/SettingsManager;

    const-string v2, "android-ui"

    invoke-interface {v1, v0, v2}, Lorg/briarproject/bramble/api/settings/SettingsManager;->mergeSettings(Lorg/briarproject/bramble/api/settings/Settings;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 646
    sget-object v1, Lorg/briarproject/briar/android/conversation/ConversationActivity;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$loadGroupId$13(Lorg/briarproject/briar/android/conversation/ConversationActivity;Ljava/lang/String;J)V
    .locals 2

    .line 506
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->messagingManager:Lorg/briarproject/briar/api/messaging/MessagingManager;

    iget-object v1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    .line 507
    invoke-interface {v0, v1}, Lorg/briarproject/briar/api/messaging/MessagingManager;->getConversationId(Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->messagingGroupId:Lorg/briarproject/bramble/api/sync/GroupId;

    .line 508
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->createMessage(Ljava/lang/String;J)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 510
    sget-object p2, Lorg/briarproject/briar/android/conversation/ConversationActivity;->LOG:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p2, p3, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$loadMessageText$7(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 5

    .line 377
    :try_start_0
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v0

    .line 378
    iget-object v2, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->messagingManager:Lorg/briarproject/briar/api/messaging/MessagingManager;

    invoke-interface {v2, p1}, Lorg/briarproject/briar/api/messaging/MessagingManager;->getMessageText(Lorg/briarproject/bramble/api/sync/MessageId;)Ljava/lang/String;

    move-result-object v2

    .line 379
    sget-object v3, Lorg/briarproject/briar/android/conversation/ConversationActivity;->LOG:Ljava/util/logging/Logger;

    const-string v4, "Loading text"

    invoke-static {v3, v4, v0, v1}, Lorg/briarproject/bramble/util/LogUtils;->logDuration(Ljava/util/logging/Logger;Ljava/lang/String;J)V

    .line 380
    invoke-direct {p0, p1, v2}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->displayMessageText(Lorg/briarproject/bramble/api/sync/MessageId;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 382
    sget-object v0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$loadMessages$5(Lorg/briarproject/briar/android/conversation/ConversationActivity;I)V
    .locals 5

    .line 329
    :try_start_0
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v0

    .line 330
    iget-object v2, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->conversationManager:Lorg/briarproject/briar/api/conversation/ConversationManager;

    iget-object v3, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    .line 331
    invoke-interface {v2, v3}, Lorg/briarproject/briar/api/conversation/ConversationManager;->getMessageHeaders(Lorg/briarproject/bramble/api/contact/ContactId;)Ljava/util/Collection;

    move-result-object v2

    .line 332
    sget-object v3, Lorg/briarproject/briar/android/conversation/ConversationActivity;->LOG:Ljava/util/logging/Logger;

    const-string v4, "Loading messages"

    invoke-static {v3, v4, v0, v1}, Lorg/briarproject/bramble/util/LogUtils;->logDuration(Ljava/util/logging/Logger;Ljava/lang/String;J)V

    .line 333
    invoke-direct {p0, p1, v2}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->displayMessages(ILjava/util/Collection;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/NoSuchContactException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 337
    sget-object v0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 335
    :catch_1
    invoke-virtual {p0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->finishOnUiThread()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$markMessageRead$25(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 4

    .line 659
    :try_start_0
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v0

    .line 660
    iget-object v2, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->messagingManager:Lorg/briarproject/briar/api/messaging/MessagingManager;

    const/4 v3, 0x1

    invoke-interface {v2, p1, p2, v3}, Lorg/briarproject/briar/api/messaging/MessagingManager;->setReadFlag(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Z)V

    .line 661
    sget-object p1, Lorg/briarproject/briar/android/conversation/ConversationActivity;->LOG:Ljava/util/logging/Logger;

    const-string p2, "Marking read"

    invoke-static {p1, p2, v0, v1}, Lorg/briarproject/bramble/util/LogUtils;->logDuration(Ljava/util/logging/Logger;Ljava/lang/String;J)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 663
    sget-object p2, Lorg/briarproject/briar/android/conversation/ConversationActivity;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p2, v0, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$markMessages$12(Lorg/briarproject/briar/android/conversation/ConversationActivity;Ljava/util/Collection;ZZ)V
    .locals 4

    .line 472
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->adapter:Lorg/briarproject/briar/android/conversation/ConversationAdapter;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/conversation/ConversationAdapter;->incrementRevision()V

    .line 473
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 474
    iget-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->adapter:Lorg/briarproject/briar/android/conversation/ConversationAdapter;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/conversation/ConversationAdapter;->getOutgoingMessages()Landroid/util/SparseArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 475
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 476
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/briar/android/conversation/ConversationItem;

    .line 477
    invoke-virtual {v2}, Lorg/briarproject/briar/android/conversation/ConversationItem;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 478
    invoke-virtual {v2, p2}, Lorg/briarproject/briar/android/conversation/ConversationItem;->setSent(Z)V

    .line 479
    invoke-virtual {v2, p3}, Lorg/briarproject/briar/android/conversation/ConversationItem;->setSeen(Z)V

    .line 480
    iget-object v2, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->adapter:Lorg/briarproject/briar/android/conversation/ConversationAdapter;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/briarproject/briar/android/conversation/ConversationAdapter;->notifyItemChanged(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic lambda$new$0(Lorg/briarproject/briar/android/conversation/ConversationActivity;Ljava/lang/String;)V
    .locals 0

    .line 176
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    invoke-direct {p0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->loadMessages()V

    return-void
.end method

.method public static synthetic lambda$null$10(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;Ljava/lang/String;)V
    .locals 0

    .line 461
    iget-object p2, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->visitor:Lorg/briarproject/briar/android/conversation/ConversationVisitor;

    invoke-virtual {p1, p2}, Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;->accept(Lorg/briarproject/briar/api/conversation/ConversationMessageVisitor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/conversation/ConversationItem;

    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->addConversationItem(Lorg/briarproject/briar/android/conversation/ConversationItem;)V

    return-void
.end method

.method public static synthetic lambda$null$22(Lorg/briarproject/briar/android/conversation/ConversationActivity;Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;I)V
    .locals 0

    const/4 p1, 0x6

    if-eq p2, p1, :cond_0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_1

    .line 626
    :cond_0
    invoke-direct {p0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->introductionOnboardingSeen()V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$onCreate$1(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/bramble/api/identity/AuthorId;)V
    .locals 2

    .line 203
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->toolbarAvatar:Lde/hdodenhof/circleimageview/CircleImageView;

    new-instance v1, Lim/delight/android/identicons/IdenticonDrawable;

    .line 205
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/identity/AuthorId;->getBytes()[B

    move-result-object p1

    invoke-direct {v1, p1}, Lim/delight/android/identicons/IdenticonDrawable;-><init>([B)V

    .line 204
    invoke-virtual {v0, v1}, Lde/hdodenhof/circleimageview/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic lambda$onCreate$2(Lorg/briarproject/briar/android/conversation/ConversationActivity;Ljava/lang/String;)V
    .locals 1

    .line 208
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->toolbarTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic lambda$onCreate$3(Lorg/briarproject/briar/android/conversation/ConversationActivity;Ljava/lang/Boolean;)V
    .locals 0

    .line 212
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->finish()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onNewConversationMessage$11(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;)V
    .locals 2

    .line 457
    instance-of v0, p1, Lorg/briarproject/briar/api/conversation/ConversationRequest;

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/briarproject/briar/api/conversation/ConversationResponse;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 464
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->visitor:Lorg/briarproject/briar/android/conversation/ConversationVisitor;

    invoke-virtual {p1, v0}, Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;->accept(Lorg/briarproject/briar/api/conversation/ConversationMessageVisitor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/conversation/ConversationItem;

    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->addConversationItem(Lorg/briarproject/briar/android/conversation/ConversationItem;)V

    goto :goto_1

    .line 460
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->viewModel:Lorg/briarproject/briar/android/conversation/ConversationViewModel;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/conversation/ConversationViewModel;->getContactDisplayName()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$lN7Gv8KXzei2PpkYQpIubd8FIkU;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$lN7Gv8KXzei2PpkYQpIubd8FIkU;-><init>(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;)V

    invoke-static {v0, p0, v1}, Lorg/briarproject/briar/android/util/UiUtils;->observeOnce(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    :goto_1
    return-void
.end method

.method public static synthetic lambda$removeContact$17(Lorg/briarproject/briar/android/conversation/ConversationActivity;)V
    .locals 3

    .line 563
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->contactManager:Lorg/briarproject/bramble/api/contact/ContactManager;

    iget-object v1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/contact/ContactManager;->removeContact(Lorg/briarproject/bramble/api/contact/ContactId;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    :goto_0
    invoke-direct {p0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->finishAfterContactRemoved()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 565
    :try_start_1
    sget-object v1, Lorg/briarproject/briar/android/conversation/ConversationActivity;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 567
    :goto_2
    invoke-direct {p0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->finishAfterContactRemoved()V

    .line 568
    throw v0
.end method

.method public static synthetic lambda$respondToRequest$26(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/briar/android/conversation/ConversationRequestItem;Z)V
    .locals 4

    .line 677
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 678
    invoke-direct {p0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->getMinTimestampForNewMessage()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 680
    :try_start_0
    sget-object v2, Lorg/briarproject/briar/android/conversation/ConversationActivity$1;->$SwitchMap$org$briarproject$briar$android$conversation$ConversationRequestItem$RequestType:[I

    invoke-virtual {p1}, Lorg/briarproject/briar/android/conversation/ConversationRequestItem;->getRequestType()Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 695
    new-instance p1, Ljava/lang/IllegalArgumentException;

    goto :goto_1

    .line 682
    :pswitch_0
    invoke-virtual {p1}, Lorg/briarproject/briar/android/conversation/ConversationRequestItem;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->respondToIntroductionRequest(Lorg/briarproject/briar/api/client/SessionId;ZJ)V

    goto :goto_0

    .line 692
    :pswitch_1
    invoke-virtual {p1}, Lorg/briarproject/briar/android/conversation/ConversationRequestItem;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->respondToGroupRequest(Lorg/briarproject/briar/api/client/SessionId;Z)V

    goto :goto_0

    .line 689
    :pswitch_2
    invoke-virtual {p1}, Lorg/briarproject/briar/android/conversation/ConversationRequestItem;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->respondToBlogRequest(Lorg/briarproject/briar/api/client/SessionId;Z)V

    goto :goto_0

    .line 686
    :pswitch_3
    invoke-virtual {p1}, Lorg/briarproject/briar/android/conversation/ConversationRequestItem;->getSessionId()Lorg/briarproject/briar/api/client/SessionId;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->respondToForumRequest(Lorg/briarproject/briar/api/client/SessionId;Z)V

    .line 698
    :goto_0
    invoke-direct {p0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->loadMessages()V

    goto :goto_2

    :goto_1
    const-string p2, "Unknown Request Type"

    .line 695
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lorg/briarproject/briar/api/client/ProtocolStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 704
    sget-object p2, Lorg/briarproject/briar/android/conversation/ConversationActivity;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p2, v0, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception p1

    .line 701
    sget-object p2, Lorg/briarproject/briar/android/conversation/ConversationActivity;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-static {p2, v0, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$showIntroductionOnboarding$23(Lorg/briarproject/briar/android/conversation/ConversationActivity;)V
    .locals 4

    const/4 v0, 0x0

    .line 611
    :goto_0
    iget-object v1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 612
    iget-object v1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v7/widget/ActionMenuView;

    if-eqz v1, :cond_0

    .line 613
    iget-object v1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 614
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    .line 615
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 620
    sget-object v0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->LOG:Ljava/util/logging/Logger;

    const-string v1, "No Overflow Icon found!"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    .line 624
    :cond_2
    new-instance v1, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$XI0oezywuEB7uHF7x46FdS0GPnI;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$XI0oezywuEB7uHF7x46FdS0GPnI;-><init>(Lorg/briarproject/briar/android/conversation/ConversationActivity;)V

    .line 629
    new-instance v2, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$Builder;

    const v3, 0x7f1200dd

    invoke-direct {v2, p0, v3}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$Builder;-><init>(Landroid/app/Activity;I)V

    .line 630
    invoke-virtual {v2, v0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$Builder;->setTarget(Landroid/view/View;)Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    move-result-object v0

    check-cast v0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$Builder;

    const v2, 0x7f1100f9

    .line 631
    invoke-virtual {v0, v2}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$Builder;->setPrimaryText(I)Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    move-result-object v0

    check-cast v0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$Builder;

    const v2, 0x7f1100f8

    .line 632
    invoke-virtual {v0, v2}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$Builder;->setSecondaryText(I)Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    move-result-object v0

    check-cast v0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$Builder;

    const v2, 0x7f0808ff

    .line 633
    invoke-virtual {v0, v2}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$Builder;->setIcon(I)Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    move-result-object v0

    check-cast v0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$Builder;

    .line 634
    invoke-virtual {v0, v1}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$Builder;->setPromptStateChangeListener(Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$PromptStateChangeListener;)Luk/co/samuelwall/materialtaptargetprompt/extras/PromptOptions;

    move-result-object v0

    check-cast v0, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$Builder;

    .line 635
    invoke-virtual {v0}, Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt$Builder;->show()Luk/co/samuelwall/materialtaptargetprompt/MaterialTapTargetPrompt;

    return-void
.end method

.method public static synthetic lambda$storeMessage$15(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/briar/api/messaging/PrivateMessage;Ljava/lang/String;)V
    .locals 12

    .line 531
    :try_start_0
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v0

    .line 532
    iget-object v2, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->messagingManager:Lorg/briarproject/briar/api/messaging/MessagingManager;

    invoke-interface {v2, p1}, Lorg/briarproject/briar/api/messaging/MessagingManager;->addLocalMessage(Lorg/briarproject/briar/api/messaging/PrivateMessage;)V

    .line 533
    sget-object v2, Lorg/briarproject/briar/android/conversation/ConversationActivity;->LOG:Ljava/util/logging/Logger;

    const-string v3, "Storing message"

    invoke-static {v2, v3, v0, v1}, Lorg/briarproject/bramble/util/LogUtils;->logDuration(Ljava/util/logging/Logger;Ljava/lang/String;J)V

    .line 534
    invoke-virtual {p1}, Lorg/briarproject/briar/api/messaging/PrivateMessage;->getMessage()Lorg/briarproject/bramble/api/sync/Message;

    move-result-object p1

    .line 535
    new-instance v11, Lorg/briarproject/briar/api/messaging/PrivateMessageHeader;

    .line 536
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    .line 537
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getTimestamp()J

    move-result-wide v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 538
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lorg/briarproject/briar/api/messaging/PrivateMessageHeader;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZZLjava/util/List;)V

    .line 539
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->textCache:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    iget-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->visitor:Lorg/briarproject/briar/android/conversation/ConversationVisitor;

    invoke-virtual {v11, p1}, Lorg/briarproject/briar/api/messaging/PrivateMessageHeader;->accept(Lorg/briarproject/briar/api/conversation/ConversationMessageVisitor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/conversation/ConversationItem;

    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->addConversationItem(Lorg/briarproject/briar/android/conversation/ConversationItem;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 542
    sget-object p2, Lorg/briarproject/briar/android/conversation/ConversationActivity;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p2, v0, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private loadGroupId(Ljava/lang/String;J)V
    .locals 1

    .line 504
    new-instance v0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$U9jma_wW4aacoC_pQxQ4vFLinRs;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$U9jma_wW4aacoC_pQxQ4vFLinRs;-><init>(Lorg/briarproject/briar/android/conversation/ConversationActivity;Ljava/lang/String;J)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadMessageText(Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 1

    .line 375
    new-instance v0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$5mXrrMZXgjDzePg5NMxbv1KyRlw;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$5mXrrMZXgjDzePg5NMxbv1KyRlw;-><init>(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/bramble/api/sync/MessageId;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadMessages()V
    .locals 2

    .line 326
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->adapter:Lorg/briarproject/briar/android/conversation/ConversationAdapter;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/conversation/ConversationAdapter;->getRevision()I

    move-result v0

    .line 327
    new-instance v1, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$rTeoyDP4Vqpnpiy6xV3zqTAJVHU;

    invoke-direct {v1, p0, v0}, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$rTeoyDP4Vqpnpiy6xV3zqTAJVHU;-><init>(Lorg/briarproject/briar/android/conversation/ConversationActivity;I)V

    invoke-virtual {p0, v1}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private markMessageRead(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 1

    .line 657
    new-instance v0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$vLn9UxhJ7Ax8fyayh-pJ1J8TCc4;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$vLn9UxhJ7Ax8fyayh-pJ1J8TCc4;-><init>(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private markMessages(Ljava/util/Collection;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            ">;ZZ)V"
        }
    .end annotation

    .line 471
    new-instance v0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$vi2m5d1AS1rfoGB918nttS9fgEI;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$vi2m5d1AS1rfoGB918nttS9fgEI;-><init>(Lorg/briarproject/briar/android/conversation/ConversationActivity;Ljava/util/Collection;ZZ)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onNewConversationMessage(Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;)V
    .locals 1

    .line 456
    new-instance v0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$kAC7cKN3kOQ4Jfj2Ek-c-s9O-kM;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$kAC7cKN3kOQ4Jfj2Ek-c-s9O-kM;-><init>(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method private removeContact()V
    .locals 1

    .line 561
    new-instance v0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$kdjAUzzRJ3aDOFoY0yaSbkMLj4M;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$kdjAUzzRJ3aDOFoY0yaSbkMLj4M;-><init>(Lorg/briarproject/briar/android/conversation/ConversationActivity;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private respondToBlogRequest(Lorg/briarproject/briar/api/client/SessionId;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
    .end annotation

    .line 748
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->blogSharingManager:Lorg/briarproject/briar/api/blog/BlogSharingManager;

    iget-object v1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-interface {v0, v1, p1, p2}, Lorg/briarproject/briar/api/blog/BlogSharingManager;->respondToInvitation(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/briar/api/client/SessionId;Z)V

    return-void
.end method

.method private respondToForumRequest(Lorg/briarproject/briar/api/client/SessionId;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
    .end annotation

    .line 742
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->forumSharingManager:Lorg/briarproject/briar/api/forum/ForumSharingManager;

    iget-object v1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-interface {v0, v1, p1, p2}, Lorg/briarproject/briar/api/forum/ForumSharingManager;->respondToInvitation(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/briar/api/client/SessionId;Z)V

    return-void
.end method

.method private respondToGroupRequest(Lorg/briarproject/briar/api/client/SessionId;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
    .end annotation

    .line 754
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->groupInvitationManager:Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;

    iget-object v1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-interface {v0, v1, p1, p2}, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;->respondToInvitation(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/briar/api/client/SessionId;Z)V

    return-void
.end method

.method private respondToIntroductionRequest(Lorg/briarproject/briar/api/client/SessionId;ZJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .annotation runtime Lorg/briarproject/bramble/api/db/DatabaseExecutor;
    .end annotation

    .line 735
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->introductionManager:Lorg/briarproject/briar/api/introduction/IntroductionManager;

    iget-object v1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    move-object v2, p1

    move-wide v3, p3

    move v5, p2

    invoke-interface/range {v0 .. v5}, Lorg/briarproject/briar/api/introduction/IntroductionManager;->respondToIntroduction(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/briar/api/client/SessionId;JZ)V

    return-void
.end method

.method private showIntroductionOnboarding()V
    .locals 1

    .line 608
    new-instance v0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$1LssQMzwENb4J4ku30Sp2qpSfMs;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$1LssQMzwENb4J4ku30Sp2qpSfMs;-><init>(Lorg/briarproject/briar/android/conversation/ConversationActivity;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method private storeMessage(Lorg/briarproject/briar/api/messaging/PrivateMessage;Ljava/lang/String;)V
    .locals 1

    .line 529
    new-instance v0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$78WGY4woL5CZ9jiWRiQuvRij0Ok;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$78WGY4woL5CZ9jiWRiQuvRij0Ok;-><init>(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/briar/api/messaging/PrivateMessage;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public eventOccurred(Lorg/briarproject/bramble/api/event/Event;)V
    .locals 3

    .line 406
    instance-of v0, p1, Lorg/briarproject/bramble/api/contact/event/ContactRemovedEvent;

    if-eqz v0, :cond_0

    .line 407
    check-cast p1, Lorg/briarproject/bramble/api/contact/event/ContactRemovedEvent;

    .line 408
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/contact/event/ContactRemovedEvent;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p1

    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/contact/ContactId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 409
    sget-object p1, Lorg/briarproject/briar/android/conversation/ConversationActivity;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Contact removed"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->finishOnUiThread()V

    goto/16 :goto_0

    .line 412
    :cond_0
    instance-of v0, p1, Lorg/briarproject/briar/api/conversation/event/ConversationMessageReceivedEvent;

    if-eqz v0, :cond_1

    .line 413
    check-cast p1, Lorg/briarproject/briar/api/conversation/event/ConversationMessageReceivedEvent;

    .line 415
    invoke-virtual {p1}, Lorg/briarproject/briar/api/conversation/event/ConversationMessageReceivedEvent;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/api/contact/ContactId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 416
    sget-object v0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Message received, adding"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p1}, Lorg/briarproject/briar/api/conversation/event/ConversationMessageReceivedEvent;->getMessageHeader()Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->onNewConversationMessage(Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;)V

    goto/16 :goto_0

    .line 419
    :cond_1
    instance-of v0, p1, Lorg/briarproject/bramble/api/sync/event/MessagesSentEvent;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 420
    check-cast p1, Lorg/briarproject/bramble/api/sync/event/MessagesSentEvent;

    .line 421
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/event/MessagesSentEvent;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v0

    iget-object v2, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-virtual {v0, v2}, Lorg/briarproject/bramble/api/contact/ContactId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 422
    sget-object v0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Messages sent"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/event/MessagesSentEvent;->getMessageIds()Ljava/util/Collection;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->markMessages(Ljava/util/Collection;ZZ)V

    goto :goto_0

    .line 425
    :cond_2
    instance-of v0, p1, Lorg/briarproject/bramble/api/sync/event/MessagesAckedEvent;

    if-eqz v0, :cond_3

    .line 426
    check-cast p1, Lorg/briarproject/bramble/api/sync/event/MessagesAckedEvent;

    .line 427
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/event/MessagesAckedEvent;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object v0

    iget-object v2, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-virtual {v0, v2}, Lorg/briarproject/bramble/api/contact/ContactId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 428
    sget-object v0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Messages acked"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/event/MessagesAckedEvent;->getMessageIds()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p1, v1, v1}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->markMessages(Ljava/util/Collection;ZZ)V

    goto :goto_0

    .line 431
    :cond_3
    instance-of v0, p1, Lorg/briarproject/bramble/api/plugin/event/ContactConnectedEvent;

    if-eqz v0, :cond_4

    .line 432
    check-cast p1, Lorg/briarproject/bramble/api/plugin/event/ContactConnectedEvent;

    .line 433
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/plugin/event/ContactConnectedEvent;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p1

    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/contact/ContactId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 434
    sget-object p1, Lorg/briarproject/briar/android/conversation/ConversationActivity;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Contact connected"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 435
    invoke-direct {p0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->displayContactOnlineStatus()V

    goto :goto_0

    .line 437
    :cond_4
    instance-of v0, p1, Lorg/briarproject/bramble/api/plugin/event/ContactDisconnectedEvent;

    if-eqz v0, :cond_5

    .line 438
    check-cast p1, Lorg/briarproject/bramble/api/plugin/event/ContactDisconnectedEvent;

    .line 439
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/plugin/event/ContactDisconnectedEvent;->getContactId()Lorg/briarproject/bramble/api/contact/ContactId;

    move-result-object p1

    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/contact/ContactId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 440
    sget-object p1, Lorg/briarproject/briar/android/conversation/ConversationActivity;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Contact disconnected"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 441
    invoke-direct {p0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->displayContactOnlineStatus()V

    :cond_5
    :goto_0
    return-void
.end method

.method public getText(Lorg/briarproject/bramble/api/sync/MessageId;)Ljava/lang/String;
    .locals 1

    .line 760
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->textCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 761
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->loadMessageText(Lorg/briarproject/bramble/api/sync/MessageId;)V

    :cond_0
    return-object v0
.end method

.method public injectActivity(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 233
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/conversation/ConversationActivity;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 238
    invoke-super {p0, p1, p2, p3}, Lorg/briarproject/briar/android/activity/BriarActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 241
    iget-object p2, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    const p3, 0x7f110105

    invoke-static {p2, p3, p1}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    .line 243
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->getView()Landroid/view/View;

    move-result-object p2

    const p3, 0x7f060031

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 244
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 182
    invoke-virtual {p0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->setSceneTransitionAnimation()V

    .line 183
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BriarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 185
    invoke-virtual {p0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "briar.CONTACT_ID"

    const/4 v1, -0x1

    .line 186
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_0

    .line 188
    new-instance v0, Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/api/contact/ContactId;-><init>(I)V

    iput-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    .line 190
    iget-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->viewModelFactory:Landroid/arch/lifecycle/ViewModelProvider$Factory;

    invoke-static {p0, p1}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;Landroid/arch/lifecycle/ViewModelProvider$Factory;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class v0, Lorg/briarproject/briar/android/conversation/ConversationViewModel;

    .line 191
    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/conversation/ConversationViewModel;

    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->viewModel:Lorg/briarproject/briar/android/conversation/ConversationViewModel;

    .line 192
    iget-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->viewModel:Lorg/briarproject/briar/android/conversation/ConversationViewModel;

    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-virtual {p1, v0}, Lorg/briarproject/briar/android/conversation/ConversationViewModel;->setContactId(Lorg/briarproject/bramble/api/contact/ContactId;)V

    const p1, 0x7f0c001d

    .line 194
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->setContentView(I)V

    const/4 p1, 0x1

    .line 197
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->setUpCustomToolbar(Z)Landroid/support/v7/widget/Toolbar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 198
    iget-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v0, 0x7f090070

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->toolbarAvatar:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 199
    iget-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v0, 0x7f090072

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->toolbarStatus:Landroid/widget/ImageView;

    .line 200
    iget-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v0, 0x7f090071

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->toolbarTitle:Landroid/widget/TextView;

    .line 202
    iget-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->viewModel:Lorg/briarproject/briar/android/conversation/ConversationViewModel;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/conversation/ConversationViewModel;->getContactAuthorId()Landroid/arch/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$qkkSc8c6rAFlOtYi7lyZLksFxw4;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$qkkSc8c6rAFlOtYi7lyZLksFxw4;-><init>(Lorg/briarproject/briar/android/conversation/ConversationActivity;)V

    invoke-static {p1, p0, v0}, Lorg/briarproject/briar/android/util/UiUtils;->observeOnce(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 207
    iget-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->viewModel:Lorg/briarproject/briar/android/conversation/ConversationViewModel;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/conversation/ConversationViewModel;->getContactDisplayName()Landroid/arch/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$UzePytzXPyW82TMMBQRAP1o_QIw;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$UzePytzXPyW82TMMBQRAP1o_QIw;-><init>(Lorg/briarproject/briar/android/conversation/ConversationActivity;)V

    invoke-virtual {p1, p0, v0}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 211
    iget-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->viewModel:Lorg/briarproject/briar/android/conversation/ConversationViewModel;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/conversation/ConversationViewModel;->isContactDeleted()Landroid/arch/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$RuVSEGSfZGjWLZ8bbXLrxcLaHUs;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$RuVSEGSfZGjWLZ8bbXLrxcLaHUs;-><init>(Lorg/briarproject/briar/android/conversation/ConversationActivity;)V

    invoke-virtual {p1, p0, v0}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 216
    iget-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->toolbarAvatar:Lde/hdodenhof/circleimageview/CircleImageView;

    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-static {v0}, Lorg/briarproject/briar/android/util/UiUtils;->getAvatarTransitionName(Lorg/briarproject/bramble/api/contact/ContactId;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    .line 217
    iget-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->toolbarStatus:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-static {v0}, Lorg/briarproject/briar/android/util/UiUtils;->getBulbTransitionName(Lorg/briarproject/bramble/api/contact/ContactId;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    .line 219
    new-instance p1, Lorg/briarproject/briar/android/conversation/ConversationVisitor;

    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->viewModel:Lorg/briarproject/briar/android/conversation/ConversationViewModel;

    .line 220
    invoke-virtual {v0}, Lorg/briarproject/briar/android/conversation/ConversationViewModel;->getContactDisplayName()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    invoke-direct {p1, p0, p0, v0}, Lorg/briarproject/briar/android/conversation/ConversationVisitor;-><init>(Landroid/content/Context;Lorg/briarproject/briar/android/conversation/ConversationVisitor$TextCache;Landroid/arch/lifecycle/LiveData;)V

    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->visitor:Lorg/briarproject/briar/android/conversation/ConversationVisitor;

    .line 221
    new-instance p1, Lorg/briarproject/briar/android/conversation/ConversationAdapter;

    invoke-direct {p1, p0, p0}, Lorg/briarproject/briar/android/conversation/ConversationAdapter;-><init>(Landroid/content/Context;Lorg/briarproject/briar/android/conversation/ConversationListener;)V

    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->adapter:Lorg/briarproject/briar/android/conversation/ConversationAdapter;

    const p1, 0x7f090077

    .line 222
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/view/BriarRecyclerView;

    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    .line 223
    iget-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 224
    iget-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->adapter:Lorg/briarproject/briar/android/conversation/ConversationAdapter;

    invoke-virtual {p1, v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 225
    iget-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    const v0, 0x7f11012b

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->setEmptyText(Ljava/lang/String;)V

    const p1, 0x7f090198

    .line 227
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/view/TextInputView;

    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->textInputView:Lorg/briarproject/briar/android/view/TextInputView;

    .line 228
    iget-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->textInputView:Lorg/briarproject/briar/android/view/TextInputView;

    invoke-virtual {p1, p0}, Lorg/briarproject/briar/android/view/TextInputView;->setListener(Lorg/briarproject/briar/android/view/TextInputView$TextInputListener;)V

    return-void

    .line 187
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 271
    invoke-virtual {p0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0004

    .line 272
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f09002d

    .line 275
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 274
    invoke-direct {p0, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->enableIntroductionActionIfAvailable(Landroid/view/MenuItem;)V

    const v0, 0x7f090036

    .line 277
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 276
    invoke-direct {p0, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->enableAliasActionIfAvailable(Landroid/view/MenuItem;)V

    .line 279
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BriarActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onItemVisible(Lorg/briarproject/briar/android/conversation/ConversationItem;)V
    .locals 1

    .line 653
    invoke-virtual {p1}, Lorg/briarproject/briar/android/conversation/ConversationItem;->isRead()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/briarproject/briar/android/conversation/ConversationItem;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-virtual {p1}, Lorg/briarproject/briar/android/conversation/ConversationItem;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->markMessageRead(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 285
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 303
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BriarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 300
    :sswitch_0
    invoke-direct {p0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->askToRemoveContact()V

    return v1

    .line 296
    :sswitch_1
    invoke-static {}, Lorg/briarproject/briar/android/conversation/AliasDialogFragment;->newInstance()Lorg/briarproject/briar/android/conversation/AliasDialogFragment;

    move-result-object p1

    .line 297
    invoke-virtual {p0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget-object v2, Lorg/briarproject/briar/android/conversation/AliasDialogFragment;->TAG:Ljava/lang/String;

    .line 296
    invoke-virtual {p1, v0, v2}, Lorg/briarproject/briar/android/conversation/AliasDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return v1

    .line 290
    :sswitch_2
    iget-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 291
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lorg/briarproject/briar/android/introduction/IntroductionActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "briar.CONTACT_ID"

    .line 292
    iget-object v2, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-virtual {v2}, Lorg/briarproject/bramble/api/contact/ContactId;->getInt()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x2

    .line 293
    invoke-virtual {p0, p1, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return v1

    .line 287
    :sswitch_3
    invoke-virtual {p0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->onBackPressed()V

    return v1

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_3
        0x7f09002d -> :sswitch_2
        0x7f090036 -> :sswitch_1
        0x7f090037 -> :sswitch_0
    .end sparse-switch
.end method

.method public onSendClick(Ljava/lang/String;)V
    .locals 4

    .line 488
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x7c00

    .line 489
    invoke-static {p1, v0}, Lorg/briarproject/bramble/util/StringUtils;->truncateUtf8(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 490
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 491
    invoke-direct {p0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->getMinTimestampForNewMessage()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 492
    iget-object v2, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->messagingGroupId:Lorg/briarproject/bramble/api/sync/GroupId;

    if-nez v2, :cond_1

    invoke-direct {p0, p1, v0, v1}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->loadGroupId(Ljava/lang/String;J)V

    goto :goto_0

    .line 493
    :cond_1
    invoke-direct {p0, p1, v0, v1}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->createMessage(Ljava/lang/String;J)V

    .line 494
    :goto_0
    iget-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->textInputView:Lorg/briarproject/briar/android/view/TextInputView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lorg/briarproject/briar/android/view/TextInputView;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 250
    invoke-super {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;->onStart()V

    .line 251
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    invoke-interface {v0, p0}, Lorg/briarproject/bramble/api/event/EventBus;->addListener(Lorg/briarproject/bramble/api/event/EventListener;)V

    .line 252
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    iget-object v1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-interface {v0, v1}, Lorg/briarproject/briar/api/android/AndroidNotificationManager;->blockContactNotification(Lorg/briarproject/bramble/api/contact/ContactId;)V

    .line 253
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    iget-object v1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-interface {v0, v1}, Lorg/briarproject/briar/api/android/AndroidNotificationManager;->clearContactNotification(Lorg/briarproject/bramble/api/contact/ContactId;)V

    .line 254
    invoke-direct {p0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->displayContactOnlineStatus()V

    .line 255
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->viewModel:Lorg/briarproject/briar/android/conversation/ConversationViewModel;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/conversation/ConversationViewModel;->getContactDisplayName()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->contactNameObserver:Landroid/arch/lifecycle/Observer;

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 256
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->startPeriodicUpdate()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 261
    invoke-super {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;->onStop()V

    .line 262
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    invoke-interface {v0, p0}, Lorg/briarproject/bramble/api/event/EventBus;->removeListener(Lorg/briarproject/bramble/api/event/EventListener;)V

    .line 263
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->notificationManager:Lorg/briarproject/briar/api/android/AndroidNotificationManager;

    iget-object v1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    invoke-interface {v0, v1}, Lorg/briarproject/briar/api/android/AndroidNotificationManager;->unblockContactNotification(Lorg/briarproject/bramble/api/contact/ContactId;)V

    .line 264
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->viewModel:Lorg/briarproject/briar/android/conversation/ConversationViewModel;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/conversation/ConversationViewModel;->getContactDisplayName()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->contactNameObserver:Landroid/arch/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LiveData;->removeObserver(Landroid/arch/lifecycle/Observer;)V

    .line 265
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->list:Lorg/briarproject/briar/android/view/BriarRecyclerView;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/view/BriarRecyclerView;->stopPeriodicUpdate()V

    return-void
.end method

.method public openRequestedShareable(Lorg/briarproject/briar/android/conversation/ConversationRequestItem;)V
    .locals 2

    .line 712
    invoke-virtual {p1}, Lorg/briarproject/briar/android/conversation/ConversationRequestItem;->getRequestedGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 715
    sget-object v0, Lorg/briarproject/briar/android/conversation/ConversationActivity$1;->$SwitchMap$org$briarproject$briar$android$conversation$ConversationRequestItem$RequestType:[I

    invoke-virtual {p1}, Lorg/briarproject/briar/android/conversation/ConversationRequestItem;->getRequestType()Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/briar/android/conversation/ConversationRequestItem$RequestType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 726
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown Request Type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 723
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 720
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/briarproject/briar/android/blog/BlogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 717
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/briarproject/briar/android/forum/ForumActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    const-string v1, "briar.GROUP_ID"

    .line 728
    invoke-virtual {p1}, Lorg/briarproject/briar/android/conversation/ConversationRequestItem;->getRequestedGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/GroupId;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 729
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 713
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public respondToRequest(Lorg/briarproject/briar/android/conversation/ConversationRequestItem;Z)V
    .locals 2

    .line 671
    invoke-virtual {p1}, Lorg/briarproject/briar/android/conversation/ConversationRequestItem;->setAnswered()V

    .line 672
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->adapter:Lorg/briarproject/briar/android/conversation/ConversationAdapter;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/conversation/ConversationAdapter;->findItemPosition(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 674
    iget-object v1, p0, Lorg/briarproject/briar/android/conversation/ConversationActivity;->adapter:Lorg/briarproject/briar/android/conversation/ConversationAdapter;

    invoke-virtual {v1, v0, p1}, Lorg/briarproject/briar/android/conversation/ConversationAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 676
    :cond_0
    new-instance v0, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$Cv9dIfwo78Y2kt0dJ-JX7BVV4uE;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/briar/android/conversation/-$$Lambda$ConversationActivity$Cv9dIfwo78Y2kt0dJ-JX7BVV4uE;-><init>(Lorg/briarproject/briar/android/conversation/ConversationActivity;Lorg/briarproject/briar/android/conversation/ConversationRequestItem;Z)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/conversation/ConversationActivity;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method
