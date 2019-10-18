.class Lcom/miui/aod/widget/ScopeClockView$1;
.super Ljava/lang/Object;
.source "ScopeClockView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/aod/widget/ScopeClockView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/aod/widget/ScopeClockView;


# direct methods
.method constructor <init>(Lcom/miui/aod/widget/ScopeClockView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/aod/widget/ScopeClockView$1;->this$0:Lcom/miui/aod/widget/ScopeClockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/miui/aod/widget/ScopeClockView$1;->this$0:Lcom/miui/aod/widget/ScopeClockView;

    iget-object v0, v0, Lcom/miui/aod/widget/ScopeClockView;->mContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/aod/widget/ScopeClockView$1;->this$0:Lcom/miui/aod/widget/ScopeClockView;

    iget-object p0, p0, Lcom/miui/aod/widget/ScopeClockView;->mContainer:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method
