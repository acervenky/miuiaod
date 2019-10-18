.class public final synthetic Lcom/miui/aod/widget/-$$Lambda$CRyMdtatbkTX4yP3S65xs8lW7LE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/aod/widget/FrameAnimationController;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/aod/widget/FrameAnimationController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/aod/widget/-$$Lambda$CRyMdtatbkTX4yP3S65xs8lW7LE;->f$0:Lcom/miui/aod/widget/FrameAnimationController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/widget/-$$Lambda$CRyMdtatbkTX4yP3S65xs8lW7LE;->f$0:Lcom/miui/aod/widget/FrameAnimationController;

    invoke-virtual {p0}, Lcom/miui/aod/widget/FrameAnimationController;->notifyAnimationStart()V

    return-void
.end method
