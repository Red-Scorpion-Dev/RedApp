.class public Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;
.super Lorg/briarproject/briar/android/activity/BriarActivity;
.source "NavDrawerActivity.java"

# interfaces
.implements Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;
.implements Lorg/briarproject/briar/android/fragment/BaseFragment$BaseFragmentListener;
.implements Lorg/briarproject/briar/android/navdrawer/TransportStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;
    }
.end annotation


# static fields
.field public static final INTENT_BLOGS:Ljava/lang/String; = "intent_blogs"

.field public static final INTENT_CONTACTS:Ljava/lang/String; = "intent_contacts"

.field public static final INTENT_FORUMS:Ljava/lang/String; = "intent_forums"

.field public static final INTENT_GROUPS:Ljava/lang/String; = "intent_groups"

.field public static final INTENT_SIGN_OUT:Ljava/lang/String; = "intent_sign_out"

.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field controller:Lorg/briarproject/briar/android/navdrawer/NavDrawerController;

.field private drawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private drawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

.field lifecycleManager:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;

.field private navigation:Landroid/support/design/widget/NavigationView;

.field private transports:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;",
            ">;"
        }
    .end annotation
.end field

.field private transportsAdapter:Landroid/widget/BaseAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    const-class v0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;

    .line 75
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->showExpiryWarning(Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;)V

    return-void
.end method

.method static synthetic access$100(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->showDozeDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->transports:Ljava/util/List;

    return-object p0
.end method

.method private clearBackStack()V
    .locals 3

    .line 305
    invoke-virtual {p0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    return-void
.end method

.method private exitIfStartupFailed(Landroid/content/Intent;)V
    .locals 2

    .line 185
    sget-object v0, Lorg/briarproject/briar/android/BriarService;->EXTRA_STARTUP_FAILED:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 186
    invoke-virtual {p0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->finish()V

    .line 187
    sget-object p1, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->LOG:Ljava/util/logging/Logger;

    const-string v0, "Exiting"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 188
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :cond_0
    return-void
.end method

.method private initializeTransports(Landroid/view/LayoutInflater;)V
    .locals 4

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->transports:Ljava/util/List;

    .line 359
    new-instance v0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;-><init>(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$1;)V

    .line 360
    sget-object v2, Lorg/briarproject/bramble/api/plugin/TorConstants;->ID:Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-static {v0, v2}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;->access$302(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;Lorg/briarproject/bramble/api/plugin/TransportId;)Lorg/briarproject/bramble/api/plugin/TransportId;

    .line 361
    iget-object v2, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->controller:Lorg/briarproject/briar/android/navdrawer/NavDrawerController;

    invoke-static {v0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;->access$300(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;)Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/briarproject/briar/android/navdrawer/NavDrawerController;->isTransportRunning(Lorg/briarproject/bramble/api/plugin/TransportId;)Z

    move-result v2

    invoke-static {v0, v2}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;->access$402(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;Z)Z

    const v2, 0x7f08093d

    .line 362
    invoke-static {v0, v2}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;->access$502(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;I)I

    const v2, 0x7f1101cf

    .line 363
    invoke-static {v0, v2}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;->access$602(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;I)I

    .line 364
    iget-object v2, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->transports:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    new-instance v0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;

    invoke-direct {v0, v1}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;-><init>(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$1;)V

    .line 367
    sget-object v2, Lorg/briarproject/bramble/api/plugin/BluetoothConstants;->ID:Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-static {v0, v2}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;->access$302(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;Lorg/briarproject/bramble/api/plugin/TransportId;)Lorg/briarproject/bramble/api/plugin/TransportId;

    .line 368
    iget-object v2, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->controller:Lorg/briarproject/briar/android/navdrawer/NavDrawerController;

    invoke-static {v0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;->access$300(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;)Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/briarproject/briar/android/navdrawer/NavDrawerController;->isTransportRunning(Lorg/briarproject/bramble/api/plugin/TransportId;)Z

    move-result v2

    invoke-static {v0, v2}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;->access$402(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;Z)Z

    const v2, 0x7f08093b

    .line 369
    invoke-static {v0, v2}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;->access$502(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;I)I

    const v2, 0x7f1101cd

    .line 370
    invoke-static {v0, v2}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;->access$602(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;I)I

    .line 371
    iget-object v2, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->transports:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    new-instance v0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;

    invoke-direct {v0, v1}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;-><init>(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$1;)V

    .line 374
    sget-object v1, Lorg/briarproject/bramble/api/plugin/LanTcpConstants;->ID:Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;->access$302(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;Lorg/briarproject/bramble/api/plugin/TransportId;)Lorg/briarproject/bramble/api/plugin/TransportId;

    .line 375
    iget-object v1, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->controller:Lorg/briarproject/briar/android/navdrawer/NavDrawerController;

    invoke-static {v0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;->access$300(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;)Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/briarproject/briar/android/navdrawer/NavDrawerController;->isTransportRunning(Lorg/briarproject/bramble/api/plugin/TransportId;)Z

    move-result v1

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;->access$402(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;Z)Z

    const v1, 0x7f08093c

    .line 376
    invoke-static {v0, v1}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;->access$502(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;I)I

    const v1, 0x7f1101ce

    .line 377
    invoke-static {v0, v1}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;->access$602(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;I)I

    .line 378
    iget-object v1, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->transports:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    new-instance v0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$3;

    invoke-direct {v0, p0, p1}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$3;-><init>(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->transportsAdapter:Landroid/widget/BaseAdapter;

    return-void
.end method

.method public static synthetic lambda$setTransport$1(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;Lorg/briarproject/bramble/api/plugin/TransportId;Z)V
    .locals 3

    .line 432
    iget-object v0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->transports:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->transportsAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    .line 433
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->transports:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;

    .line 434
    invoke-static {v1}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;->access$300(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;)Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/briarproject/bramble/api/plugin/TransportId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 435
    invoke-static {v1, p2}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;->access$402(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;Z)Z

    .line 436
    iget-object p1, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->transportsAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic lambda$showExpiryWarning$0(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 349
    iget-object p2, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->controller:Lorg/briarproject/briar/android/navdrawer/NavDrawerController;

    invoke-interface {p2}, Lorg/briarproject/briar/android/navdrawer/NavDrawerController;->expiryWarningDismissed()V

    const/16 p2, 0x8

    .line 350
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$vz0ytrdNan4ZXqX3Yzi2VXjA17c(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->setLockVisible(Z)V

    return-void
.end method

.method private loadFragment(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 211
    :pswitch_1
    invoke-direct {p0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->signOut()V

    goto :goto_0

    .line 208
    :pswitch_2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lorg/briarproject/briar/android/settings/SettingsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 199
    :pswitch_3
    invoke-static {}, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->newInstance()Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->startFragment(Lorg/briarproject/briar/android/fragment/BaseFragment;)V

    goto :goto_0

    .line 202
    :pswitch_4
    invoke-static {}, Lorg/briarproject/briar/android/forum/ForumListFragment;->newInstance()Lorg/briarproject/briar/android/forum/ForumListFragment;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->startFragment(Lorg/briarproject/briar/android/fragment/BaseFragment;)V

    goto :goto_0

    .line 196
    :pswitch_5
    invoke-static {}, Lorg/briarproject/briar/android/contact/ContactListFragment;->newInstance()Lorg/briarproject/briar/android/contact/ContactListFragment;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->startFragment(Lorg/briarproject/briar/android/fragment/BaseFragment;)V

    goto :goto_0

    .line 205
    :pswitch_6
    invoke-static {}, Lorg/briarproject/briar/android/blog/FeedFragment;->newInstance()Lorg/briarproject/briar/android/blog/FeedFragment;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->startFragment(Lorg/briarproject/briar/android/fragment/BaseFragment;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090101
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private setLockVisible(Z)V
    .locals 2

    .line 315
    iget-object v0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->navigation:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v0}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f090105

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 316
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method private setTransport(Lorg/briarproject/bramble/api/plugin/TransportId;Z)V
    .locals 1

    .line 431
    new-instance v0, Lorg/briarproject/briar/android/navdrawer/-$$Lambda$NavDrawerActivity$vBc4tdtaC7MdOCb4HWFw1KOSP34;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/briar/android/navdrawer/-$$Lambda$NavDrawerActivity$vBc4tdtaC7MdOCb4HWFw1KOSP34;-><init>(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;Lorg/briarproject/bramble/api/plugin/TransportId;Z)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showExpiryWarning(Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;)V
    .locals 8

    .line 321
    invoke-static {}, Lorg/briarproject/briar/android/util/UiUtils;->getDaysUntilExpiry()I

    move-result v0

    if-gez v0, :cond_0

    .line 322
    invoke-direct {p0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->signOut()V

    :cond_0
    const v1, 0x7f0900ae

    .line 325
    invoke-virtual {p0, v1}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0900b0

    .line 327
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0900af

    .line 330
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 333
    sget-object v4, Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;->UPDATE:Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne p1, v4, :cond_1

    const p1, 0x7f060030

    .line 335
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 334
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    const p1, 0x7f1100a1

    .line 336
    new-array v4, v5, [Ljava/lang/Object;

    .line 337
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {p0, p1, v4}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 336
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x106000c

    .line 339
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 338
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 341
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 340
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 343
    :cond_1
    invoke-virtual {p0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v4, 0x7f0f0001

    new-array v5, v5, [Ljava/lang/Object;

    .line 345
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 344
    invoke-virtual {p1, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 343
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    :goto_0
    new-instance p1, Lorg/briarproject/briar/android/navdrawer/-$$Lambda$NavDrawerActivity$A-56MkAfnPXX-umMwOdafJYpMiY;

    invoke-direct {p1, p0, v1}, Lorg/briarproject/briar/android/navdrawer/-$$Lambda$NavDrawerActivity$A-56MkAfnPXX-umMwOdafJYpMiY;-><init>(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;Landroid/view/ViewGroup;)V

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private showSignOutFragment()V
    .locals 2

    .line 268
    iget-object v0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 269
    new-instance v0, Lorg/briarproject/briar/android/logout/SignOutFragment;

    invoke-direct {v0}, Lorg/briarproject/briar/android/logout/SignOutFragment;-><init>()V

    invoke-direct {p0, v0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->startFragment(Lorg/briarproject/briar/android/fragment/BaseFragment;)V

    return-void
.end method

.method private signOut()V
    .locals 2

    .line 273
    iget-object v0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(I)V

    const/4 v0, 0x0

    .line 274
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->signOut(Z)V

    .line 275
    invoke-virtual {p0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->finish()V

    return-void
.end method

.method private startFragment(Lorg/briarproject/briar/android/fragment/BaseFragment;)V
    .locals 1

    .line 284
    invoke-virtual {p0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 285
    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->startFragment(Lorg/briarproject/briar/android/fragment/BaseFragment;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 286
    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->startFragment(Lorg/briarproject/briar/android/fragment/BaseFragment;Z)V

    :goto_0
    return-void
.end method

.method private startFragment(Lorg/briarproject/briar/android/fragment/BaseFragment;I)V
    .locals 1

    .line 279
    iget-object v0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->navigation:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v0, p2}, Landroid/support/design/widget/NavigationView;->setCheckedItem(I)V

    .line 280
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->startFragment(Lorg/briarproject/briar/android/fragment/BaseFragment;)V

    return-void
.end method

.method private startFragment(Lorg/briarproject/briar/android/fragment/BaseFragment;Z)V
    .locals 3

    .line 292
    invoke-virtual {p0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f010011

    const v2, 0x7f010010

    .line 293
    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 297
    invoke-virtual {p1}, Lorg/briarproject/briar/android/fragment/BaseFragment;->getUniqueTag()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0900c1

    .line 296
    invoke-virtual {v0, v2, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 299
    invoke-virtual {p1}, Lorg/briarproject/briar/android/fragment/BaseFragment;->getUniqueTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 301
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private updateTransports()V
    .locals 4

    .line 444
    iget-object v0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->transports:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->transportsAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    goto :goto_1

    .line 445
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->transports:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;

    .line 446
    iget-object v2, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->controller:Lorg/briarproject/briar/android/navdrawer/NavDrawerController;

    invoke-static {v1}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;->access$300(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;)Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/briarproject/briar/android/navdrawer/NavDrawerController;->isTransportRunning(Lorg/briarproject/bramble/api/plugin/TransportId;)Z

    move-result v2

    invoke-static {v1, v2}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;->access$402(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;Z)Z

    goto :goto_0

    .line 448
    :cond_1
    iget-object v0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->transportsAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public handleDbException(Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 0

    return-void
.end method

.method public injectActivity(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 112
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 169
    invoke-super {p0, p1, p2, p3}, Lorg/briarproject/briar/android/activity/BriarActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 171
    iget-object p1, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->controller:Lorg/briarproject/briar/android/navdrawer/NavDrawerController;

    new-instance p2, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$2;

    invoke-direct {p2, p0, p0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$2;-><init>(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;Lorg/briarproject/briar/android/DestroyableContext;)V

    invoke-interface {p1, p0, p2}, Lorg/briarproject/briar/android/navdrawer/NavDrawerController;->shouldAskForDozeWhitelisting(Landroid/content/Context;Lorg/briarproject/briar/android/controller/handler/ResultHandler;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 233
    iget-object v0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {p0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 237
    sget-object v1, Lorg/briarproject/briar/android/logout/SignOutFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 238
    invoke-virtual {p0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->finish()V

    goto :goto_0

    .line 239
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lorg/briarproject/briar/android/contact/ContactListFragment;->TAG:Ljava/lang/String;

    .line 240
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_2

    .line 247
    invoke-static {}, Lorg/briarproject/briar/android/contact/ContactListFragment;->newInstance()Lorg/briarproject/briar/android/contact/ContactListFragment;

    move-result-object v0

    const v1, 0x7f090102

    invoke-direct {p0, v0, v1}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->startFragment(Lorg/briarproject/briar/android/fragment/BaseFragment;I)V

    goto :goto_0

    .line 250
    :cond_2
    invoke-super {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 263
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BriarActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 264
    iget-object v0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->drawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 118
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BriarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    invoke-virtual {p0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->exitIfStartupFailed(Landroid/content/Intent;)V

    const v0, 0x7f0c0023

    .line 120
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->setContentView(I)V

    const v0, 0x7f0901a2

    .line 122
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/support/v7/widget/Toolbar;

    const v0, 0x7f090098

    .line 123
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v0, 0x7f090108

    .line 124
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/NavigationView;

    iput-object v0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->navigation:Landroid/support/design/widget/NavigationView;

    const v0, 0x7f0901ac

    .line 125
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 127
    invoke-virtual {p0, v4}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 128
    invoke-virtual {p0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 129
    invoke-virtual {p0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 131
    new-instance v7, Landroid/support/v7/app/ActionBarDrawerToggle;

    iget-object v3, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v5, 0x7f110120

    const v6, 0x7f11011f

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    iput-object v7, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->drawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    .line 134
    iget-object v1, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v2, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->drawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 135
    iget-object v1, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->navigation:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v1, p0}, Landroid/support/design/widget/NavigationView;->setNavigationItemSelectedListener(Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;)V

    .line 137
    invoke-virtual {p0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->initializeTransports(Landroid/view/LayoutInflater;)V

    .line 138
    iget-object v1, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->transportsAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    iget-object v0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->lockManager:Lorg/briarproject/briar/api/android/LockManager;

    invoke-interface {v0}, Lorg/briarproject/briar/api/android/LockManager;->isLockable()Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lorg/briarproject/briar/android/navdrawer/-$$Lambda$NavDrawerActivity$vz0ytrdNan4ZXqX3Yzi2VXjA17c;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/navdrawer/-$$Lambda$NavDrawerActivity$vz0ytrdNan4ZXqX3Yzi2VXjA17c;-><init>(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;)V

    invoke-virtual {v0, p0, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 142
    iget-object v0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->lifecycleManager:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;->getLifecycleState()Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    move-result-object v0

    sget-object v1, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;->RUNNING:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;->isAfter(Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-direct {p0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->showSignOutFragment()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 145
    invoke-static {}, Lorg/briarproject/briar/android/contact/ContactListFragment;->newInstance()Lorg/briarproject/briar/android/contact/ContactListFragment;

    move-result-object p1

    const v0, 0x7f090102

    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->startFragment(Lorg/briarproject/briar/android/fragment/BaseFragment;I)V

    .line 148
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 149
    invoke-virtual {p0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->onNewIntent(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 218
    iget-object v0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->drawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 219
    invoke-direct {p0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->clearBackStack()V

    .line 220
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7f090105

    if-ne v0, v3, :cond_0

    .line 221
    iget-object p1, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->lockManager:Lorg/briarproject/briar/api/android/LockManager;

    invoke-interface {p1, v2}, Lorg/briarproject/briar/api/android/LockManager;->setLocked(Z)V

    .line 222
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->finishAfterTransition(Landroid/app/Activity;)V

    return v1

    .line 225
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->loadFragment(I)V

    .line 227
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f090106

    if-eq p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 92
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BriarActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 93
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->exitIfStartupFailed(Landroid/content/Intent;)V

    const-string v0, "intent_groups"

    const/4 v1, 0x0

    .line 95
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-static {}, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->newInstance()Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;

    move-result-object p1

    const v0, 0x7f090104

    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->startFragment(Lorg/briarproject/briar/android/fragment/BaseFragment;I)V

    goto :goto_0

    :cond_0
    const-string v0, "intent_forums"

    .line 97
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    invoke-static {}, Lorg/briarproject/briar/android/forum/ForumListFragment;->newInstance()Lorg/briarproject/briar/android/forum/ForumListFragment;

    move-result-object p1

    const v0, 0x7f090103

    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->startFragment(Lorg/briarproject/briar/android/fragment/BaseFragment;I)V

    goto :goto_0

    :cond_1
    const-string v0, "intent_contacts"

    .line 99
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    invoke-static {}, Lorg/briarproject/briar/android/contact/ContactListFragment;->newInstance()Lorg/briarproject/briar/android/contact/ContactListFragment;

    move-result-object p1

    const v0, 0x7f090102

    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->startFragment(Lorg/briarproject/briar/android/fragment/BaseFragment;I)V

    goto :goto_0

    :cond_2
    const-string v0, "intent_blogs"

    .line 102
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 103
    invoke-static {}, Lorg/briarproject/briar/android/blog/FeedFragment;->newInstance()Lorg/briarproject/briar/android/blog/FeedFragment;

    move-result-object p1

    const v0, 0x7f090101

    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->startFragment(Lorg/briarproject/briar/android/fragment/BaseFragment;I)V

    goto :goto_0

    :cond_3
    const-string v0, "intent_sign_out"

    .line 104
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 105
    invoke-virtual {p0, v1}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->signOut(Z)V

    :cond_4
    :goto_0
    const/4 p1, 0x0

    .line 107
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 257
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BriarActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 258
    iget-object p1, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->drawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    return-void
.end method

.method public onStart()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 156
    invoke-super {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;->onStart()V

    .line 157
    invoke-direct {p0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->updateTransports()V

    .line 158
    iget-object v0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->lockManager:Lorg/briarproject/briar/api/android/LockManager;

    invoke-interface {v0}, Lorg/briarproject/briar/api/android/LockManager;->checkIfLockable()V

    .line 159
    iget-object v0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->controller:Lorg/briarproject/briar/android/navdrawer/NavDrawerController;

    new-instance v1, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$1;

    invoke-direct {v1, p0, p0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$1;-><init>(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;Lorg/briarproject/briar/android/DestroyableContext;)V

    invoke-interface {v0, v1}, Lorg/briarproject/briar/android/navdrawer/NavDrawerController;->showExpiryWarning(Lorg/briarproject/briar/android/controller/handler/ResultHandler;)V

    return-void
.end method

.method public stateUpdate(Lorg/briarproject/bramble/api/plugin/TransportId;Z)V
    .locals 0

    .line 453
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->setTransport(Lorg/briarproject/bramble/api/plugin/TransportId;Z)V

    return-void
.end method
