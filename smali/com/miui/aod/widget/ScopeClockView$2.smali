.class Lcom/miui/aod/widget/ScopeClockView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScopeClockView.java"


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

    iput-object p1, p0, Lcom/miui/aod/widget/ScopeClockView$2;->this$0:Lcom/miui/aod/widget/ScopeClockView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/widget/ScopeClockView$2;->this$0:Lcom/miui/aod/widget/ScopeClockView;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/aod/widget/ScopeClockView;->mCancel:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/aod/widget/ScopeClockView$2;->this$0:Lcom/miui/aod/widget/ScopeClockView;

    invoke-static {p1}, Lcom/miui/aod/widget/ScopeClockView;->access$000(Lcom/miui/aod/widget/ScopeClockView;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/miui/aod/widget/ScopeClockView$2;->this$0:Lcom/miui/aod/widget/ScopeClockView;

    iget-boolean p1, p1, Lcom/miui/aod/widget/ScopeClockView;->mHasWindowFocus:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/aod/widget/ScopeClockView$2;->this$0:Lcom/miui/aod/widget/ScopeClockView;

    iget-boolean p1, p1, Lcom/miui/aod/widget/ScopeClockView;->mCancel:Z

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/miui/aod/widget/ScopeClockView$2;->this$0:Lcom/miui/aod/widget/ScopeClockView;

    invoke-virtual {p0}, Lcom/miui/aod/widget/ScopeClockView;->startAnimation()V

    :cond_1
    return-void
.end method
