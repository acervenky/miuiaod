.class Lcom/miui/aod/widget/ScopeImageView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScopeImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/aod/widget/ScopeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/widget/ScopeImageView;


# direct methods
.method constructor <init>(Lcom/miui/aod/widget/ScopeImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/widget/ScopeImageView$2;->this$0:Lcom/miui/aod/widget/ScopeImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/miui/aod/widget/ScopeImageView$2;->this$0:Lcom/miui/aod/widget/ScopeImageView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/miui/aod/widget/ScopeImageView;->mNeedDrawBitmap:Z

    iget-object p1, p0, Lcom/miui/aod/widget/ScopeImageView$2;->this$0:Lcom/miui/aod/widget/ScopeImageView;

    iget-boolean p1, p1, Lcom/miui/aod/widget/ScopeImageView;->mLoop:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/aod/widget/ScopeImageView$2;->this$0:Lcom/miui/aod/widget/ScopeImageView;

    iget-object p1, p1, Lcom/miui/aod/widget/ScopeImageView;->mOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    iget-object p1, p0, Lcom/miui/aod/widget/ScopeImageView$2;->this$0:Lcom/miui/aod/widget/ScopeImageView;

    iget-object p1, p1, Lcom/miui/aod/widget/ScopeImageView;->mEndAction:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/miui/aod/widget/ScopeImageView$2;->this$0:Lcom/miui/aod/widget/ScopeImageView;

    iget-object p0, p0, Lcom/miui/aod/widget/ScopeImageView;->mEndAction:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
