.class public final synthetic Lcom/miui/aod/widget/-$$Lambda$YD8MyyzAEM674LL_iYhn-Kc8Fyo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/aod/widget/ClockPanelView;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/aod/widget/ClockPanelView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/aod/widget/-$$Lambda$YD8MyyzAEM674LL_iYhn-Kc8Fyo;->f$0:Lcom/miui/aod/widget/ClockPanelView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/widget/-$$Lambda$YD8MyyzAEM674LL_iYhn-Kc8Fyo;->f$0:Lcom/miui/aod/widget/ClockPanelView;

    invoke-virtual {p0}, Lcom/miui/aod/widget/ClockPanelView;->resetClockHandState()V

    return-void
.end method
