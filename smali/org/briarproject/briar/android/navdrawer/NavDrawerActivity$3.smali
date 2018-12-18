.class Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$3;
.super Landroid/widget/BaseAdapter;
.source "NavDrawerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->initializeTransports(Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;

.field final synthetic val$inflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;Landroid/view/LayoutInflater;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$3;->this$0:Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;

    iput-object p2, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$3;->val$inflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 383
    iget-object v0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$3;->this$0:Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;

    invoke-static {v0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->access$700(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 380
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$3;->getItem(I)Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;
    .locals 1

    .line 388
    iget-object v0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$3;->this$0:Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;

    invoke-static {v0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->access$700(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-eqz p2, :cond_0

    goto :goto_0

    .line 403
    :cond_0
    iget-object p2, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$3;->val$inflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c006d

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 407
    :goto_0
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$3;->getItem(I)Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;

    move-result-object p1

    .line 409
    invoke-static {p1}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;->access$400(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 410
    iget-object p3, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$3;->this$0:Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;

    const v0, 0x7f060030

    invoke-static {p3, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    goto :goto_1

    .line 413
    :cond_1
    iget-object p3, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$3;->this$0:Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;

    const v0, 0x1060011

    invoke-static {p3, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    :goto_1
    const v0, 0x7f0900d0

    .line 417
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 418
    iget-object v1, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$3;->this$0:Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;

    .line 419
    invoke-static {p1}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;->access$500(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 418
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 420
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setColorFilter(I)V

    const p3, 0x7f090190

    .line 422
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 423
    iget-object v0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$3;->this$0:Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;

    invoke-static {p1}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;->access$600(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$Transport;)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
