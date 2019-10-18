.class public final synthetic Lcom/miui/aod/components/view/-$$Lambda$utbW21xbENRV8VbAawORzNlPgoc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/aod/components/widget/ClockPanelSelectView$OnItemClickListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/aod/components/view/ClockStyleSelectView;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/aod/components/view/ClockStyleSelectView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/aod/components/view/-$$Lambda$utbW21xbENRV8VbAawORzNlPgoc;->f$0:Lcom/miui/aod/components/view/ClockStyleSelectView;

    return-void
.end method


# virtual methods
.method public final onItemClick(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/components/view/-$$Lambda$utbW21xbENRV8VbAawORzNlPgoc;->f$0:Lcom/miui/aod/components/view/ClockStyleSelectView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/aod/components/view/ClockStyleSelectView;->onClockSelected(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
